FROM ubuntu

MAINTAINER richard
 
RUN  apt-get update  && \
     apt-get install apache2 -y  

ADD	start.sh /
RUN 	chmod +x  /start.sh
EXPOSE 	80

CMD ["/bin/bash","/start.sh"]
