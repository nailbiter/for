#!/bin/bash

SAVETO=/Users/nailbiter/faces
PROJECTDIR=/Users/nailbiter/for/forjava/MarieByrd/

mkdir $SAVETO
echo -e "$SAVETO/comp.sh: $PROJECTDIR/misc/comp.sh\n\tcp $< \$@" | make -f -
#docker run -p 9000:9000 -p 8000:8000 -v $SAVETO:/faces -t -i bamos/openface /bin/bash
docker run -p 9000:9000 -p 8000:8000 -v $SAVETO:/faces bamos/openface /faces/comp.sh
