#!/usr/bin/env python
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/spider.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2025-05-29T17:11:36.037719
    REVISION: ---

==============================================================================="""
import click
import os
import logging

# Standard Google GenAI SDK imports.
# Assumes 'google-generativeai' library (version 0.8.5 as per your pip show)
# provides these structures.
# import google.generativeai as genai
# from google.generativeai import types
from google import genai
import os
from google.genai import types

# Configure basic logging
# logging.basicConfig(level=logging.INFO, format="%(levelname)s:%(name)s:%(message)s")
logger = logging.getLogger(__name__)


# --- 1. Define your local Python function ---
def add_numbers(a: float, b: float) -> int:  # Accept float for flexibility from model
    """Adds two numbers together.

    Args:
        a: The first number.
        b: The second number.

    Returns:
        The integer sum of a and b.
    """
    logging.warning(f"Python function 'add_numbers' called with: a={a}, b={b}")
    return int(a + b)  # Ensure integer result as per original intent/schema


# --- 2. Function to handle Gemini interaction using genai.Client ---
def get_gemini_response_via_client(
    user_prompt: str, api_key: str, model_name: str = "gemini-1.5-flash-latest"
):
    """
    Initializes Gemini using genai.Client, sends a prompt, handles potential
    sequential function calls, and prints the final response.

    Args:
        user_prompt: The query to send to Gemini.
        api_key: Your Google AI API key.
        model_name: The model to use (e.g., "gemini-1.5-flash-latest" or "gemini-2.0-flash" if it works for you).
    """
    try:
        # Initialize the client
        # Note: genai.configure(api_key=...) is not used with genai.Client()
        # The API key is passed directly to the client.
        client = genai.Client(api_key=api_key)

        # Define the add_numbers function schema as a dictionary
        add_numbers_function_dict = {
            "name": "add_numbers",
            "description": "Adds two numbers together based on user's request.",
            "parameters": {
                "type": "object",  # JSON schema type
                "properties": {
                    "a": {
                        "type": "number",
                        "description": "The first number for addition.",
                    },  # Using "number" for broader compatibility with float from model
                    "b": {
                        "type": "number",
                        "description": "The second number for addition.",
                    },
                },
                "required": ["a", "b"],
            },
        }

        # Configure tools and generation config
        # This relies on types.Tool and types.GenerateContentConfig being available.
        current_tools = types.Tool(function_declarations=[add_numbers_function_dict])
        generation_config_with_tools = types.GenerateContentConfig(
            tools=[current_tools]
        )

        logging.warning(f"User: {user_prompt}")

        # Initialize conversation history
        # The 'contents' for generate_content should be a list of Content objects
        current_contents = [
            types.Content(parts=[types.Part(text=user_prompt)], role="user")
        ]

        # Loop to handle possible multiple function calls
        while True:
            # logging.warning(f"Sending content to model: {current_contents}")
            response = client.models.generate_content(  # Make sure to use the correct client method for your model string
                model=f"models/{model_name}",  # Models are often prefixed with "models/"
                contents=current_contents,
                config=generation_config_with_tools,
            )

            # Check for errors in response.prompt_feedback
            if response.prompt_feedback and response.prompt_feedback.block_reason:
                logger.error(
                    f"Request was blocked: {response.prompt_feedback.block_reason}"
                )
                if response.prompt_feedback.block_reason_message:
                    logger.error(
                        f"Block reason message: {response.prompt_feedback.block_reason_message}"
                    )
                break

            if not response.candidates:
                logger.error("No candidates returned from the model.")
                break

            # Get the first candidate's content (assuming non-streaming)
            model_response_content = response.candidates[0].content
            current_contents.append(
                model_response_content
            )  # Add model's full response to history

            if (
                not model_response_content.parts
                or not model_response_content.parts[0].function_call
            ):
                # No function call, should be the final text response
                if (
                    model_response_content.parts
                    and model_response_content.parts[0].text
                ):
                    final_text = "".join(
                        part.text for part in model_response_content.parts if part.text
                    )  # Concatenate all text parts
                    logging.warning(f"Gemini: {final_text}")
                else:
                    logging.warning(
                        "Gemini did not return a text response in the final turn."
                    )
                break  # Exit loop

            # --- Handle Function Call ---
            function_call = model_response_content.parts[0].function_call
            logging.warning(f"Gemini wants to call: {function_call.name}")
            logging.warning(
                f"Arguments: {dict(function_call.args)}"
            )  # Convert args to dict for cleaner logging

            function_response_value = None
            error_in_function = False

            if function_call.name == "add_numbers":
                try:
                    # Use .get() for safer access to args and provide default if necessary, or handle missing
                    arg_a = function_call.args.get("a")
                    arg_b = function_call.args.get("b")

                    if arg_a is None or arg_b is None:
                        raise ValueError(
                            "Missing 'a' or 'b' in function call arguments."
                        )

                    function_response_value = add_numbers(
                        a=float(arg_a), b=float(arg_b)
                    )
                    api_response_value = {"result": function_response_value}

                except (
                    ValueError
                ) as ve:  # Catch issues with arg presence or float conversion
                    logger.error(
                        f"ValueError in processing arguments for {function_call.name}: {ve}"
                    )
                    api_response_value = {"error": str(ve)}
                    error_in_function = True
                except Exception as e:
                    logger.error(
                        f"Exception during {function_call.name} execution: {e}"
                    )
                    api_response_value = {
                        "error": f"Execution error in {function_call.name}: {str(e)}"
                    }
                    error_in_function = True
            else:
                logger.error(
                    f"Error: Unknown or unhandled function call: {function_call.name}"
                )
                api_response_value = {
                    "error": f"Function '{function_call.name}' is not defined or unhandled."
                }
                error_in_function = (
                    True  # Treat as error to potentially stop or inform model
                )

            logging.warning(
                f"Sending result of '{function_call.name}' back to Gemini: {api_response_value}"
            )

            # Construct the tool response part and add to history
            # This relies on types.Part and types.FunctionResponse being available
            tool_response_part = types.Part(
                function_response=types.FunctionResponse(
                    name=function_call.name,
                    response=api_response_value,  # Send the dict which might contain 'result' or 'error'
                )
            )
            current_contents.append(
                types.Content(parts=[tool_response_part], role="tool")
            )  # Standard role for tool/function responses

            if (
                error_in_function and function_call.name != "add_numbers"
            ):  # If an unknown function was called
                logger.warning("Stopping due to unhandled function call error.")
                break  # Optionally, send one last message to model with error? For now, just stop.

        # End of while loop

    except AttributeError as e:
        logger.error(
            f"An AttributeError occurred. This often points to an issue with the SDK version or environment: {e}"
        )
        logger.error(
            "Ensure 'google.generativeai.types' has 'Tool', 'GenerateContentConfig', 'Content', 'Part', and 'FunctionResponse'."
        )
        import traceback

        traceback.print_exc()
    except Exception as e:
        logger.error(f"A general error occurred: {e}")
        import traceback

        traceback.print_exc()


@click.command()
@click.option(
    "-T", "--engine-access-token", required=True, envvar="APROMPT_P_ENGINE_ACCESS_TOKEN"
)
@click.option("-p", "--prompt", type=str, required=True)
@click.option(
    "-m",
    "--model-name",
    type=str,
    default="gemini-2.0-flash",
    help="Model name to use (e.g., gemini-1.5-flash-latest, gemini-2.0-flash).",
)
def spider(engine_access_token, prompt, model_name):
    # The user's working snippet used os.getenv for API key directly in client,
    # here we take it from click option as before.
    get_gemini_response_via_client(
        api_key=engine_access_token, user_prompt=prompt, model_name=model_name
    )


if __name__ == "__main__":
    # Setup for click, .env loading (if any) can remain as in your original script
    spider()
