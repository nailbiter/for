#!/usr/bin/env python3
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/miscutils/tesseract-hocr.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2025-03-18T20:20:18.155790
    REVISION: ---

==============================================================================="""

import click
from dotenv import load_dotenv
import os
from os import path
import logging
from PIL import Image, ImageDraw, ImageFont
import pytesseract
from bs4 import BeautifulSoup
import base64
import sys
from io import BytesIO
import tqdm
import typing


# --- Main Processing Function ---
def process_hocr(
    image_path: str, text_processing_function: typing.Callable, language: str
):
    """
    Processes an image with Tesseract OCR (for Japanese), extracts hOCR data,
    applies a text processing function to each recognized text chunk,
    and generates an HTML overlay.

    Args:
        image_path: Path to the input image.
        text_processing_function: A function that takes the text and
                                   bounding box of a text chunk and returns
                                   the modified text.
        language:  The Tesseract language code (default: 'jpn' for Japanese).
                   Use 'jpn_vert' for vertical Japanese.

    Returns:
        An HTML string representing the processed image with overlaid text.
    """
    try:
        # 1. Generate hOCR data, specifying the language.
        hocr_data = pytesseract.image_to_pdf_or_hocr(
            Image.open(image_path), extension="hocr", lang=language
        )
        hocr_string = hocr_data.decode("utf-8")
    except TypeError:
        # Older pytesseract versions.
        hocr_string = pytesseract.image_to_string(
            Image.open(image_path), config="hocr", lang=language
        )
    except (RuntimeError, FileNotFoundError) as e:
        print(
            f"ERROR: Tesseract failed. Ensure Tesseract and Japanese language data are installed.\nOriginal error: {e}",
            file=sys.stderr,
        )
        sys.exit(1)

    # 2. Parse the hOCR data.
    soup = BeautifulSoup(hocr_string, "html.parser")

    # 3. Iterate over ALL recognized text chunks (ocrx_word, ocr_line, etc.)
    #    We'll find all elements with a 'title' attribute containing 'bbox'.
    #    This is a more general approach than looking for specific classes.
    text_elements = soup.find_all(
        lambda tag: tag.get("title") and "bbox" in tag["title"]
    )

    processed_elements = []
    for element in text_elements:
        bbox_str = element["title"]
        text = element.get_text()

        # Extract bounding box.
        parts = bbox_str.split(";")
        bbox_part = parts[0].strip()
        try:  # Added a try-except block here
            coords = [int(x) for x in bbox_part.split()[1:]]
            x1, y1, x2, y2 = coords
        except (ValueError, IndexError) as e:
            print(
                f"Warning: Could not parse bbox: {bbox_str}. Skipping element. Error: {e}",
                file=sys.stderr,
            )
            continue  # Skip to the next element

        # Apply the processing function.
        processed_text = text_processing_function(text, (x1, y1, x2, y2))
        processed_elements.append((processed_text, (x1, y1, x2, y2)))

    # 4. Create the HTML overlay (same as before, but using processed_elements).
    buffered = BytesIO()
    with Image.open(image_path) as img:
        img.save(buffered, format="PNG")
    img_base64 = base64.b64encode(buffered.getvalue()).decode("utf-8")

    html_output = f"""
    <!DOCTYPE html>
    <html>
    <head>
        <title>Processed OCR Output (Japanese)</title>
        <style>
            body {{
                background-image: url('data:image/png;base64,{img_base64}');
                background-repeat: no-repeat;
                background-size: contain;
                position: relative;
            }}
            .text-element {{
                position: absolute;
                white-space: nowrap; /* Prevent wrapping unless explicitly styled */
            }}
        </style>
    </head>
    <body>
    """

    for text, (x1, y1, x2, y2) in processed_elements:
        html_output += f"""
        <div class="text-element" style="left:{x1}px; top:{y1}px;">
            {text}
        </div>
        """
    html_output += """
    </body>
    </html>
    """
    return html_output


def example_processing_function(text: str, bbox) -> str:
    """
    An example text processing function.  This one converts
    the text to uppercase and adds a red underline.
    """

    logging.warning(text)
    # text = text[::-1]
    return f"<span style='text-decoration: underline; color: red;'>{text}</span>"


def highlight_long_words(text, bbox):
    """
    Highlights words longer than 5 characters with a semi-transparent yellow background.
    """
    if len(text) > 5:
        return f"<span style='background-color: rgba(255, 255, 0, 0.5);'>{text}</span>"
    else:
        return text


def add_tooltips(text, bbox):
    """
    Add bbox information using HTML's "title" atribute to provide tooltip functionality.
    """
    x1, y1, x2, y2 = bbox
    return f"<span title='bbox: {x1} {y1} {x2} {y2}'>{text}</span>"


@click.command()
@click.option("-i", "--image-path", type=click.Path(), required=True)
@click.option("-l", "--language", type=click.Choice(["eng", "jpn"]), required=True)
def tesseract_hocr(image_path, language):
    #     image_path = "input.png"

    #     # Example usage with the example processing function.
    html_result = process_hocr(
        image_path, example_processing_function, language=language
    )
    with open("output_example.html", "w", encoding="utf-8") as f:
        f.write(html_result)
    logging.warning("Output saved to output_example.html")


#     # Example usage with the highlighting function.
#     html_result = process_hocr(image_path, highlight_long_words)
#     with open("output_highlight.html", "w", encoding="utf-8") as f:
#         f.write(html_result)
#     print("Output saved to output_highlight.html")

#     # Example usage with the tooltip function.
#     html_result = process_hocr(image_path, add_tooltips)
#     with open("output_tooltip.html", "w", encoding="utf-8") as f:
#         f.write(html_result)
#     print("Output saved to output_tooltip.html")


if __name__ == "__main__":
    fn = ".env"
    if path.isfile(fn):
        logging.warning(f"loading `{fn}`")
        load_dotenv(dotenv_path=fn)
    tesseract_hocr()
