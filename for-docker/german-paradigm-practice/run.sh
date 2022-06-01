#!/bin/sh

open "http://localhost:5000"
#docker run  -p 5000:5000 nailbiter/$IMAGE_NAME
docker-compose up --build
