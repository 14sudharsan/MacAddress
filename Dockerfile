FROM ubuntu:18.04 AS base
MAINTAINER Sudharsan J
RUN apt-get update &&  apt-get install -y curl jq

FROM base
COPY getmac.sh /
RUN chmod 755 *.sh 
ENV APIKEY=at_j2YdcHWY1QH2N3B2VhsLhMJXjlfC4
ENTRYPOINT ["./getmac.sh"]
