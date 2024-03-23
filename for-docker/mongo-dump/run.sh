#!/bin/sh

/snap/bin/docker run --env-file=`pwd`/.env -v `pwd`/output/:/output:rw nailbiter/mongo-dump
/snap/bin/docker run --env-file=`pwd`/.env-gstasks -v `pwd`/output-gstasks/:/output:rw nailbiter/mongo-dump
#docker run -v `pwd`/notebooks:/notebooks:ro -v `pwd`/pdfs:/pdfs:rw -it nailbiter/jupyter-latex-pdf:latest
