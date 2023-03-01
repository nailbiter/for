#!/bin/sh

docker run -it --env-file=.env -v `pwd`/output/:/output:rw nailbiter/mongo-dump
#docker run -v `pwd`/notebooks:/notebooks:ro -v `pwd`/pdfs:/pdfs:rw -it nailbiter/jupyter-latex-pdf:latest
