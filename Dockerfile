FROM ubuntu:18.04
MAINTAINER Sudharsan J
RUN apt-get update && apt-get install -y 
RUN apt-get install curl -y && apt-get install jq -y 
COPY getmac.sh /
RUN chmod 755 *.sh 
ENV APIKEY=at_j2YdcHWY1QH2N3B2VhsLhMJXjlfC4
ENTRYPOINT ["./getmac.sh"]
