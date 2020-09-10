#!/usr/bin/env python3

# Importing required modules
from tkinter import *
from PIL import Image, ImageTk
from pdf2image import convert_from_path
import click

# Creating Tk container


@click.command()
@click.argument("fn", type=click.Path(exists=True))
def pdf_viewer(fn):
    root = Tk()

    # Creating the frame for PDF Viewer
    pdf_frame = Frame(root).pack(fill=BOTH, expand=1)

    # Adding Scrollbar to the PDF frame
    scrol_y = Scrollbar(pdf_frame, orient=VERTICAL)

    # Adding text widget for inserting images
    pdf = Text(pdf_frame, yscrollcommand=scrol_y.set, bg="grey")

    # Setting the scrollbar to the right side
    scrol_y.pack(side=RIGHT, fill=Y)
    scrol_y.config(command=pdf.yview)

    # Finally packing the text widget
    pdf.pack(fill=BOTH, expand=1)

    # Here the PDF is converted to list of images
    pages = convert_from_path(fn, size=(800, 900))

    # Empty list for storing images
    photos = []

    # Storing the converted images into list
    for i in range(len(pages)):
        photos.append(ImageTk.PhotoImage(pages[i]))

    # Adding all the images to the text widget
    for photo in photos:
        pdf.image_create(END, image=photo)

        # For Seperating the pages
        pdf.insert(END, '\n\n')

    # Ending of mainloop
    mainloop()


if __name__ == "__main__":
    pdf_viewer()
