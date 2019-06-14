#!/usr/bin/env bash
echo Please wait for a while docker building an image from dockerfile
docker build -t getmac .
echo Docker container spawn from container image
docker run -it getmac:latest /bin/sh
