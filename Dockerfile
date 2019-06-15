FROM ubuntu:18.04 AS base
MAINTAINER Sudharsan J
RUN apt-get update &&  apt-get install -y curl jq

FROM base
COPY getmac.sh /
RUN chmod 755 *.sh 
ENTRYPOINT ["./getmac.sh"]
