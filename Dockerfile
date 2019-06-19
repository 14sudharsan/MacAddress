FROM ubuntu:18.04 AS base
MAINTAINER Sudharsan J
RUN apt-get update &&  apt-get install -y curl jq

FROM base
COPY getmac.sh macaddress-input.txt help_page /
RUN chmod 755 *.sh 
ENTRYPOINT ["/bin/bash", "-c","/getmac.sh"]
