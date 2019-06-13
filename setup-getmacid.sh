#!/usr/bin/env bash
echo Downloading getmacid microservice docker image please wait ...
docker pull 14sudharsan/getmacid:version3
echo Docker container spawn from container image
docker run -it 14sudharsan/getmacid:version3
