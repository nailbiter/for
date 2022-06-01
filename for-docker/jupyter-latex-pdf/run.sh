#!/bin/sh

docker run -v `pwd`/notebooks:/notebooks:ro -v `pwd`/pdfs:/pdfs:rw -it nailbiter/jupyter-latex-pdf:latest
