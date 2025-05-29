#!/usr/bin/env python3
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

# from dotenv import load_dotenv
import os
from os import path
import logging

import google.generativeai as genai
from google.generativeai.types import (
    FunctionDeclaration,
    Tool,
)  # Import necessary types

# --- 1. Configure your API Key ---
# Make sure to replace "YOUR_API_KEY" with your actual API key.
# It's often better to set this as an environment variable.
# import os
# genai.configure(api_key=os.environ["GEMINI_API_KEY"])


# --- 2. Define your local Python function ---
# This is the function Gemini will be able to "call".
def add_numbers(a: int, b: int) -> int:
    """Adds two numbers together.

    Args:
      a: The first number.
      b: The second number.

    Returns:
      The sum of a and b.
    """
    logging.warning(f"Python function 'add_numbers' called with: a={a}, b={b}")
    return a + b


add_numbers_declaration = FunctionDeclaration(
    name="add_numbers",
    description="Adds two numbers together based on user's request.",  # Slightly more descriptive
    # Define the expected parameters for the function using JSON Schema format
    parameters={
        "type": "OBJECT",  # Note: "type", not "type_" for dictionary keys
        "properties": {
            "a": {"type": "INTEGER", "description": "The first number for addition."},
            "b": {"type": "INTEGER", "description": "The second number for addition."},
        },
        "required": ["a", "b"],  # Specify which parameters are mandatory
    },
)
calculator_tool = Tool(function_declarations=[add_numbers_declaration])


# --- 2. Create a function to handle Gemini interaction ---
def get_gemini_response_with_function_call(user_prompt: str, api_key: str):
    """
    Initializes Gemini, sends a prompt, handles potential sequential function calls,
    and prints the final response.

    Args:
        user_prompt: The query to send to Gemini.
        api_key: Your Google AI API key.
    """
    try:
        # --- Configure your API Key ---
        genai.configure(api_key=api_key)

        # --- Set up the Gemini model with the function declaration ---

        model = genai.GenerativeModel(
            model_name="gemini-2.0-flash",  # Or any model that supports function calling
            tools=[calculator_tool],  # Pass the function directly
        )
        chat = model.start_chat()

        # --- Send the initial user prompt ---
        logging.warning(f"User: {user_prompt}")
        response = chat.send_message(user_prompt)

        # --- Loop to handle one or more function calls from Gemini ---
        # The loop continues as long as the latest response from Gemini is a function call.
        while response.candidates[0].content.parts[0].function_call:
            function_call = response.candidates[0].content.parts[0].function_call
            logging.warning(f"Gemini wants to call: {function_call.name}")

            function_response_value = None
            # --- Execute the specific function Gemini called ---
            if function_call.name == "add_numbers":
                args = function_call.args
                # Ensure args exist and are of correct type if necessary,
                # though for this simple example, we assume they are correct.
                function_response_value = add_numbers(a=args["a"], b=args["b"])
            else:
                # If you have multiple functions, you'd add more if/elif blocks here
                # or use a dictionary to map function names to functions.
                logging.warning(
                    f"Error: Unknown or unhandled function call: {function_call.name}"
                )
                # Decide how to handle: break, raise error, or send an error response to Gemini
                # For simplicity, we'll break. Gemini might then respond with an error or try something else.
                # To inform Gemini, you might send a function response with an error payload.
                break  # Exiting the loop as we can't handle this function call.

            # If the function call was not handled (e.g., unknown function broke the loop)
            if (
                function_response_value is None and function_call.name != "add_numbers"
            ):  # Check if break happened due to unknown func
                break

            # --- Send the function's result back to Gemini ---
            logging.warning(
                f"Sending result of '{function_call.name}' back to Gemini: {function_response_value}"
            )
            # This message IS the new 'response' that the while loop will check in its next iteration.
            # If Gemini needs to make another function call based on this result,
            # this 'response' object will again contain a 'function_call'.
            # Otherwise, it should contain the final textual answer.
            # response = chat.send_message(
            #     [
            #         genai.types.Part(
            #             function_response=genai.types.FunctionResponse(
            #                 name=function_call.name,  # Critical to use the name of the function that was called
            #                 response={
            #                     "result": function_response_value
            #                 },  # The actual data returned by your function
            #             )
            #         )
            #     ]
            # )
            function_response_object = genai.types.FunctionResponse(
                name=function_call.name, response={"result": function_response_value}
            )
            response = chat.send_message([function_response_object])
        # --- End of function call loop ---

        # --- Print Gemini's final response after all function calls (if any) are processed ---
        # At this point, response.candidates[0].content.parts[0].function_call should be false.
        if (
            response.candidates
            and response.candidates[0].content.parts
            and response.candidates[0].content.parts[0].text
        ):
            print(f"Gemini: {response.candidates[0].content.parts[0].text}")
        else:
            # This case can happen if the loop was broken due to an unhandled function
            # or if Gemini ended the conversation in an unexpected way.
            print(
                "Gemini did not return a final text response. The conversation might have ended or an error occurred during function handling."
            )
            # You can inspect the 'response' object here for more details, e.g.,
            # print(f"Last response from Gemini: {response}")

    except Exception as e:
        print(f"An error occurred: {e}")
        import traceback

        traceback.print_exc()


@click.command()
@click.option(
    "-T", "--engine-access-token", required=True, envvar="APROMPT_P_ENGINE_ACCESS_TOKEN"
)
@click.option("-p", "--prompt", type=str, required=True)
def spider(engine_access_token, prompt):
    return get_gemini_response_with_function_call(
        api_key=engine_access_token, user_prompt=prompt
    )


if __name__ == "__main__":
    #    fn = ".env"
    #    if path.isfile(fn):
    #        logging.warning(f"loading `{fn}`")
    #        load_dotenv(dotenv_path=fn)
    spider()
