#!/usr/bin/env python
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/miscutils/translate.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2025-03-06T19:23:30.722590
    REVISION: ---

TODO:
  1. add tenacity
==============================================================================="""

import click
from dotenv import load_dotenv
import os
from tenacity import retry, stop_after_attempt, wait_fixed
from os import path
import logging
import functools
import sys
from pptx import Presentation
from pptx.text.text import TextFrame
import tqdm

moption = functools.partial(click.option, show_envvar=True)
KNOWN_FILE_FORMATS = {"pptx": None, "plaintext": None}
KNOWN_LANGUAGES = {"es": None, "ja": None, "en": None}


def replace_text_in_pptx(pptx_file, replace_func):
    """
    Iterates through all text elements in a .pptx file, replaces them with the
    output of a provided Python function, and outputs the modified .pptx to stdout.

    Args:
        pptx_file (str or file-like object): Path to the .pptx file or a file-like object.
        replace_func (callable): A function that takes the original text as input
                                   and returns the replacement text.
    """

    prs = Presentation(pptx_file)

    for slide in tqdm.tqdm(prs.slides):
        for shape in slide.shapes:
            if shape.has_text_frame:
                text_frame = shape.text_frame
                for paragraph in text_frame.paragraphs:
                    for run in paragraph.runs:
                        original_text = run.text
                        replacement_text = replace_func(original_text)
                        run.text = replacement_text

    # Save the modified presentation to stdout
    prs.save(sys.stdout.buffer)


# if __name__ == "__main__":
#     if len(sys.argv) != 2:
#         print("Usage: python script.py <input.pptx>")
#         sys.exit(1)

#     input_pptx = sys.argv[1]

#     try:
#         replace_text_in_pptx(input_pptx, my_replacement_function)
#     except FileNotFoundError:
#         print(f"Error: File '{input_pptx}' not found.")
#         sys.exit(1)
#     except Exception as e:
#         print(f"An error occurred: {e}")
#         sys.exit(1)


@click.command()
@moption("--input-file", "-i", type=click.Path(allow_dash=True), default="-")
@moption(
    "--input-format",
    "-F",
    type=click.Choice(["auto", *KNOWN_FILE_FORMATS]),
    default="auto",
)
@moption(
    "--input-language",
    "-I",
    type=click.Choice(list(KNOWN_LANGUAGES)),
    required=True,
    default="ja",
)
@moption(
    "--output-language",
    "-O",
    type=click.Choice(list(KNOWN_LANGUAGES)),
    required=True,
    default="en",
)
@moption(
    "-M", "--method", type=click.Choice(["googletrans", "official"]), default="official"
)
def translate(input_file, input_format, input_language, output_language, method):
    logging.warning(
        dict(input_language=input_language, output_language=output_language)
    )

    if input_format == "auto" or input_format == "plaintext":
        with click.open_file(input_file) as f:
            text = f.read().strip()
        logging.warning(f"i: {text}")
        text = translate_text(
            text,
            method=method,
            input_language=input_language,
            output_language=output_language,
        )

        logging.warning(f"o: {text}")
        click.echo(text)
    elif input_format == "pptx":
        replace_text_in_pptx(
            input_file,
            replace_func=functools.partial(
                translate_text,
                method=method,
                input_language=input_language,
                output_language=output_language,
            ),
        )


@functools.cache
@retry(stop=stop_after_attempt(3), wait=wait_fixed(2))
def translate_text(
    text: str, method: str, input_language: str, output_language: str
) -> str:
    if method == "googletrans":
        #! pip install 'googletrans==4.0.0rc1'
        #! pip install googletrans
        from googletrans import Translator

        translator = Translator()
        text = translator.translate(text, src=input_language, dest=output_language).text
    elif method == "official":
        #! pip install google-cloud-translate
        #! pip install google-cloud-translate==2.0.1
        # from google.cloud import translate as google_translate
        from google.cloud import translate_v2 as google_translate

        client = google_translate.Client()
        result = client.translate(
            text, source_language=input_language, target_language=output_language
        )["translatedText"]
    else:
        raise NotImplementedError(dict(method=method))
    return text


if __name__ == "__main__":
    fn = ".env"
    if path.isfile(fn):
        logging.warning(f"loading `{fn}`")
        load_dotenv(dotenv_path=fn)
    translate(show_default=True, auto_envvar_prefix="TRANSLATE")
