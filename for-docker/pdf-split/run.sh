#!/bin/sh

rm -rf out/*.pdf
docker run  -v $(pwd)/in:/in: -v $(pwd)/out:/out:rw nailbiter/pdf-split
