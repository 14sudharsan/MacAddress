FROM 14sudharsan/base-image-ubuntu-18.04:v1  
MAINTAINER Sudharsan J
COPY getmac.sh /
RUN chmod 755 *.sh 
ENTRYPOINT ["./getmac.sh"]
