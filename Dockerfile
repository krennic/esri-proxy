FROM tomcat:8.0-jre8-alpine

MAINTAINER Krennic

RUN apk add --no-cache curl 
RUN	curl -o /usr/local/tomcat/webapps/esri-proxy.tar.gz https://github.com/Esri/resource-proxy/releases 
RUN	tar -xvzf /usr/local/tomcat/webapps/esri-proxy.tar.gz 
RUN	rm /usr/local/tomcat/webapps/esri-proxy.tar.gz