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

==============================================================================="""

import click
from dotenv import load_dotenv
import os

# import asyncio
from os import path
import logging
import functools


moption = functools.partial(click.option, show_envvar=True)

KNOWN_FILE_FORMATS = {"pptx": None}

KNOWN_LANGUAGES = {"es": None, "ja": None, "en": None}


@click.command()
@moption("--input-file", "-i", type=click.Path(allow_dash=True), default="-")
@moption(
    "--input-format",
    "-f",
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
    "-o",
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
    with click.open_file(input_file) as f:
        text = f.read().strip()
    logging.warning(f"i: {text}")
    # client = translate.TranslationServiceClient()
    # response = client.translate_text(
    #     request={
    #         "parent": parent,
    #         "contents": [text],
    #         "mime_type": "text/plain",  # You can also use "text/html"
    #         "target_language_code": output_language,
    #     }
    # )
    # translation, *_ = list(response.translation)
    # text = translation.translated_text

    if method == "googletrans":
        # !pip install googletrans
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

    logging.warning(f"o: {text}")
    click.echo(text)


if __name__ == "__main__":
    fn = ".env"
    if path.isfile(fn):
        logging.warning(f"loading `{fn}`")
        load_dotenv(dotenv_path=fn)
    translate(show_default=True, auto_envvar_prefix="TRANSLATE")
