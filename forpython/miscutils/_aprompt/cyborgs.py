"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/miscutils/_aprompt/cyborgs.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2025-05-29T19:17:54.124968
    REVISION: ---

==============================================================================="""
from collections import namedtuple
from google import genai
import os
from google.genai import types
import requests
from bs4 import BeautifulSoup
import logging
import click
import typing
import functools
import uuid

## FIXME: use this in for loop
Augmentation = namedtuple("Augmentation", "name callable declaration")

# You might want to set logging.basicConfig(level=logging.INFO) in your main script

_SCRAPE_CACHE = {}


def _inner_scrape(
    url: str,
    log_details: typing.Callable = lambda x, **_: None,
) -> typing.Any:
    headers = {
        # "User-Agent": "GeminiFunctionBot/1.0 (LanguageModelClient; for scraping purposes on user behalf)"
        # headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36",  # More common browser User-Agent
        "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9",
        "Accept-Language": "en-US,en;q=0.9",
        "Accept-Encoding": "gzip, deflate, br",  # requests handles decompression
        "Connection": "keep-alive",
        "Upgrade-Insecure-Requests": "1",  # Tells the server you prefer HTTPS
        "DNT": "1",  # Do Not Track request
        # }
    }
    timeout_seconds = 15  # Set a reasonable timeout for the request

    if url not in _SCRAPE_CACHE:
        log_details(f"Attempting to scrape URL: {url}")
        response = requests.get(
            url, headers=headers, timeout=timeout_seconds, allow_redirects=True
        )
        response.raise_for_status()  # Raises an HTTPError for bad responses (4XX or 5XX)
        _SCRAPE_CACHE[url] = response

        tfn = f"/tmp/{uuid.uuid4()}.html"
        with open(tfn, "w") as f:
            f.write(response.text)
        log_details(f"saved to `{tfn}`")
    else:
        log_details(f"retrieving `{url}` from cache")

    return _SCRAPE_CACHE[url]


def scrape_webpage(
    url: str,
    log_details: typing.Callable = lambda x, **_: None,
    is_raw: bool = False,
) -> dict:
    """
    Fetches and extracts the main textual content from a given public webpage URL.

    Args:
        url: The fully qualified URL of the webpage to scrape.
             (e.g., 'https://example.com/article').
             Must be a public URL accessible from the internet.

    Returns:
        A dictionary containing either:
        - {"text_content": "extracted textual content of the page..."}
        - {"error": "Description of the error encountered."}
    """
    if not url.startswith(("http://", "https://")):
        logger.error(f"Invalid URL scheme: {url}")
        return {"error": "Invalid URL: Must start with http:// or https://"}

    try:
        response = _inner_scrape(url, log_details=log_details)
        content_type = response.headers.get("content-type", "").lower()
        if "text/html" not in content_type:
            logger.warning(f"Content type is not HTML ({content_type}) for URL: {url}")
            return {
                "error": f"Content is not HTML. Detected content type: {content_type}"
            }

        if is_raw:
            return {"text_content": response.content}

        # Parse HTML content
        soup = BeautifulSoup(response.content, "html.parser")

        # Remove script and style tags to clean up text
        for script_or_style in soup(["script", "style"]):
            script_or_style.decompose()

        # Get text, using a space as a separator and stripping whitespace
        text_content = soup.get_text(separator=" ", strip=True)

        # Basic clean-up: replace multiple spaces/newlines with a single space/newline
        text_content = " ".join(text_content.split())

        # Limit content length to avoid overly large responses (optional, adjust as needed)
        # max_length = 20000 # Example limit for Gemini
        # if len(text_content) > max_length:
        #     text_content = text_content[:max_length] + "... (content truncated)"
        #     logger.info(f"Content from {url} truncated to {max_length} characters.")

        if not text_content:
            logger.info(f"No text content found after parsing {url}")
            return {"text_content": "(No significant text content found on the page)"}

        logger.info(f"Successfully scraped and extracted text from {url}")
        return {"text_content": text_content}

    except requests.exceptions.HTTPError as e:
        logger.error(f"HTTP error for {url}: {e}")
        return {"error": f"HTTP error: {e.response.status_code} {e.response.reason}"}
    except requests.exceptions.ConnectionError as e:
        logger.error(f"Connection error for {url}: {e}")
        return {"error": f"Connection error: Could not connect to the server at {url}."}
    except requests.exceptions.Timeout as e:
        logger.error(f"Timeout for {url}: {e}")
        return {"error": f"Request timed out while trying to reach {url}."}
    except requests.exceptions.RequestException as e:
        logger.error(f"General request error for {url}: {e}")
        return {
            "error": f"An unexpected error occurred when trying to access {url}: {str(e)}"
        }
    except Exception as e:
        logger.error(f"An unexpected error occurred during scraping {url}: {e}")
        import traceback

        logger.debug(traceback.format_exc())  # For more detailed debugging if needed
        return {"error": f"An unexpected error occurred: {str(e)}"}


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


# --- 2. Function to handle Gemini interaction using genai.Client ---
def get_gemini_response_via_client(
    user_prompt: str,
    api_key: str,
    augmentations: list[Augmentation],
    model_name: str = "gemini-1.5-flash-latest",
    detailed_log_file: typing.Optional[str] = None,
    max_turns: typing.Optional[int] = None,
):
    """
    Initializes Gemini using genai.Client, sends a prompt, handles potential
    sequential function calls, and prints the final response.

    Args:
        user_prompt: The query to send to Gemini.
        api_key: Your Google AI API key.
        model_name: The model to use (e.g., "gemini-1.5-flash-latest" or "gemini-2.0-flash" if it works for you).
    """

    if detailed_log_file is None:
        log_details = lambda x, **_: None
    else:
        logger.warning(f"detailed logs are saved in `{detailed_log_file}`")
        _logger = logging.getLogger("detailed")

        # 2. Set the overall logging level for the _logger
        _logger.setLevel(logging.INFO)  # Process all messages from DEBUG upwards

        # 3. Create a file handler
        # 'app.log' is the file where logs will be written
        # mode='a' means append to the file if it exists, 'w' means overwrite
        file_handler = logging.FileHandler(detailed_log_file, mode="a")

        # 4. Set the logging level for the handler (optional, can be different from _logger)
        file_handler.setLevel(logging.INFO)
        _logger.propagate = False
        _logger.addHandler(file_handler)
        log_details = _logger.info

    try:
        # Initialize the client
        # Note: genai.configure(api_key=...) is not used with genai.Client()
        # The API key is passed directly to the client.
        client = genai.Client(api_key=api_key)

        # Define the add_numbers function schema as a dictionary

        # Configure tools and generation config
        # This relies on types.Tool and types.GenerateContentConfig being available.
        generation_config_with_tools = types.GenerateContentConfig(
            tools=[
                types.Tool(
                    # function_declarations=[add_numbers_function_dict, scrape_webpage_schema]
                    function_declarations=[
                        augmentation.declaration for augmentation in augmentations
                    ]
                )
            ]
        )
        augmentation_names = {
            augmentation.name: augmentation for augmentation in augmentations
        }

        logger.warning(f"User: {user_prompt}")

        # Initialize conversation history
        # The 'contents' for generate_content should be a list of Content objects
        current_contents = [
            types.Content(parts=[types.Part(text=user_prompt)], role="user")
        ]

        # Loop to handle possible multiple function calls
        re_prompt_done = False
        turn_count = 0
        while max_turns is None or turn_count <= max_turns:
            turn_count += 1
            log_details(f"turn: {turn_count}")
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
                    if turn_count == 1 and not re_prompt_done:
                        re_prompt_text = (
                            f"Thank you for the plan. Please proceed now by using the tools provided."
                            # f"Thank you for the plan. Please proceed now by using the "
                            # f"'{tool_name_to_check}' function with the necessary arguments based on my initial request."
                        )
                        log_details(
                            f"Model provided text instead of function call on first attempt. Adding user re-prompt: '{re_prompt_text}'"
                        )
                        current_contents.append(
                            types.Content(
                                parts=[types.Part(text=re_prompt_text)], role="user"
                            )
                        )
                        re_prompt_done = True
                        continue

                    final_text = "".join(
                        part.text for part in model_response_content.parts if part.text
                    )  # Concatenate all text parts
                    click.echo(
                        ("*" * 20)
                        + "\n"
                        + f"Gemini: {final_text.strip()}"
                        + "\n"
                        + ("*" * 20)
                    )
                else:
                    logger.error(
                        "Gemini did not return a text response in the final turn."
                    )
                break  # Exit loop
            else:
                # --- Handle Function Call ---
                function_call = model_response_content.parts[0].function_call
                logger.warning(f"Gemini wants to call: {function_call.name}")
                log_details(
                    f"Arguments: {dict(function_call.args)}"
                )  # Convert args to dict for cleaner logging

                function_response_value = None
                error_in_function = False

                if (
                    function_call.name == "add_numbers"
                    and function_call.name in augmentation_names
                ):
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

                # ... (inside your function call handling logic)
                elif (
                    function_call.name in ["scrape_webpage", "scrape_webpage_raw"]
                    and function_call.name in augmentation_names
                ):
                    args = function_call.args
                    url_to_scrape = args.get("url")
                    if url_to_scrape:
                        function_response_data = (
                            augmentation_names[function_call.name]
                        ).callable(url=url_to_scrape, log_details=log_details)
                    else:
                        function_response_data = {"error": "Missing URL parameter."}
                    api_response_value = function_response_data

                    # Send function_response_data back to Gemini
                    # (using the appropriate method for your chosen client: ChatSession or genai.Client)
                    # For example:
                    # tool_response_part = types.Part(
                    #     function_response=types.FunctionResponse(
                    #         name="scrape_webpage",
                    #         response=function_response_data
                    #     )
                    # )
                    # current_contents.append(types.Content(parts=[tool_response_part], role="tool"))
                    # ... then call generate_content again with current_contents
                # ...

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

                log_details(
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
                    error_in_function and function_call.name not in augmentation_names
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


AUGMENTATION_PACKS = {
    "spider": [
        # Augmentation(
        #     name="scrape_webpage",
        #     callable=scrape_webpage,
        #     declaration={
        #         "name": "scrape_webpage",
        #         "description": (
        #             "Fetches the main textual content from a given public webpage URL. "
        #             "It's designed to extract readable text and may not capture all data "
        #             "from web applications or sites heavily reliant on JavaScript execution for content rendering. "
        #             "The function returns the extracted text or an error message if scraping fails."
        #         ),
        #         "parameters": {
        #             "type": "object",  # In JSON Schema, the root is an object describing parameters.
        #             "properties": {
        #                 "url": {
        #                     "type": "string",
        #                     "description": (
        #                         "The fully qualified URL of the webpage to scrape (e.g., 'https://example.com/article'). "
        #                         "The URL must be publicly accessible from the internet and should point to an HTML page. "
        #                         "Avoid URLs that require login or are known to be behind complex anti-scraping measures unless instructed otherwise."
        #                     ),
        #                 }
        #             },
        #             "required": ["url"],
        #         }
        #         # The return type isn't explicitly defined in the schema for Gemini's tools,
        #         # but the function's output (a dict with "text_content" or "error")
        #         # becomes the 'response' field in the FunctionResponse sent back to the model.
        #         # The description for the tool should clarify what to expect.
        #     },
        # ),
        Augmentation(
            name="scrape_webpage_raw",
            callable=functools.partial(scrape_webpage, is_raw=True),
            declaration={
                "name": "scrape_webpage_raw",
                "description": (
                    "Fetches the raw HTML content from a given public webpage URL. No additional parsing is performed"
                ),
                "parameters": {
                    "type": "object",  # In JSON Schema, the root is an object describing parameters.
                    "properties": {
                        "url": {
                            "type": "string",
                            "description": (
                                "The fully qualified URL of the webpage to scrape (e.g., 'https://example.com/article'). "
                                "The URL must be publicly accessible from the internet and should point to an HTML page. "
                                "Avoid URLs that require login or are known to be behind complex anti-scraping measures unless instructed otherwise."
                            ),
                        }
                    },
                    "required": ["url"],
                },
            },
        ),
    ]
}
