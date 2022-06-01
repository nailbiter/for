#!/usr/bin/env python3
"""===============================================================================

        FILE: split.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2022-03-11T00:29:18.044931
    REVISION: ---

==============================================================================="""

import sys
from PyPDF2 import PdfFileReader, PdfFileWriter
import tqdm


# code below adapted from https://realpython.com/pdf-python/


_, pdf_fn, names_fn, out_path = sys.argv
with open(names_fn) as f:
    names = f.readlines()
names = [name.strip() for name in names]
pdf = PdfFileReader(pdf_fn)
assert pdf.getNumPages() == len(
    names), f"number of pages in pdf ({pdf.getNumPages()}) and number of names ({len(names)}) are different"
for page, name in tqdm.tqdm(list(zip(range(pdf.getNumPages()), names))):
    pdf_writer = PdfFileWriter()
    pdf_writer.addPage(pdf.getPage(page))

    output = f'{out_path}/{name}.pdf'
    #print(f"creating {output}")
    with open(output, 'wb') as output_pdf:
        pdf_writer.write(output_pdf)
