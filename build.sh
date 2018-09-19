#!/bin/bash
appname=demotest
docker stop -t 0 "$appname"
docker rm "$appname"
docker build -f Dockerfile_prod -t demotest . && docker run -d --name demotest -p 8048:80 "$appname"

