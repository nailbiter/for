#!/bin/sh
curl -X POST -H 'Content-type: application/json' --data '{"text":"记得滴眼药水!"}' `cat /home/pi/for/misc/candice_eyedrugs_rem.txt`
