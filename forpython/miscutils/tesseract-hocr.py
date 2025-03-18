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
from io import BytesIO


def process_hocr(image_path, text_processing_function):
    """
    Processes an image with Tesseract OCR, extracts hOCR data,
    applies a text processing function, and generates an HTML overlay.

    Args:
        image_path: Path to the input image.
        text_processing_function: A function that takes the text and
                                   bounding box of a word and returns
                                   the modified text.

    Returns:
        An HTML string representing the processed image with overlaid text.
    """

    try:
        # 1. Generate hOCR data using pytesseract.
        hocr_data = pytesseract.image_to_pdf_or_hocr(
            Image.open(image_path), extension="hocr"
        )
        hocr_string = hocr_data.decode("utf-8")

    except TypeError:
        # Fallback for older versions of pytesseract.
        hocr_string = pytesseract.image_to_string(Image.open(image_path), config="hocr")

    # 2. Parse the hOCR data with BeautifulSoup.
    soup = BeautifulSoup(hocr_string, "html.parser")
    words = soup.find_all("span", class_="ocrx_word")

    # 3. Process each word and store its modified text and bounding box.
    processed_words = []
    for word in words:
        bbox_str = word["title"]
        text = word.get_text()

        # Extract bounding box coordinates.
        parts = bbox_str.split(";")
        bbox_part = parts[0].strip()
        coords = [int(x) for x in bbox_part.split()[1:]]
        x1, y1, x2, y2 = coords

        # Apply the user-provided processing function.
        processed_text = text_processing_function(text, (x1, y1, x2, y2))
        processed_words.append((processed_text, (x1, y1, x2, y2)))

    # 4. Create an HTML overlay with the original image as background.
    #    We'll embed the image directly into the HTML using base64 encoding.
    buffered = BytesIO()
    with Image.open(image_path) as img:
        img.save(buffered, format="PNG")  # Choose format appropriate for your input
    img_base64 = base64.b64encode(buffered.getvalue()).decode("utf-8")

    html_output = f"""
    <!DOCTYPE html>
    <html>
    <head>
        <title>Processed OCR Output</title>
        <style>
            body {{
                background-image: url('data:image/png;base64,{img_base64}');
                background-repeat: no-repeat;
                background-size: contain;  /* Or 'cover' depending on your needs */
                position: relative; /* Important for absolute positioning of text */
            }}
            .word {{
                position: absolute;
                white-space: nowrap; /* Prevent text wrapping */
            }}
        </style>
    </head>
    <body>
    """

    # Add each processed word as a positioned div.
    for text, (x1, y1, x2, y2) in processed_words:
        html_output += f"""
        <div class="word" style="left:{x1}px; top:{y1}px;">
            {text}
        </div>
        """

    html_output += """
    </body>
    </html>
    """

    return html_output


def example_processing_function(text, bbox):
    """
    An example text processing function.  This one converts
    the text to uppercase and adds a red underline.
    """
    return (
        f"<span style='text-decoration: underline; color: red;'>{text.upper()}</span>"
    )


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
def tesseract_hocr(image_path):
    #     image_path = "input.png"

    #     # Example usage with the example processing function.
    #     html_result = process_hocr(image_path, example_processing_function)
    #     with open("output_example.html", "w", encoding="utf-8") as f:
    #         f.write(html_result)
    #     print("Output saved to output_example.html")

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

    pass


if __name__ == "__main__":
    fn = ".env"
    if path.isfile(fn):
        logging.warning(f"loading `{fn}`")
        load_dotenv(dotenv_path=fn)
    tesseract_hocr()
