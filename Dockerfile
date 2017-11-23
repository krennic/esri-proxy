FROM tomcat:8.0-jre8-alpine

MAINTAINER Krennic

RUN apk add --no-cache curl tar &&\
	curl -o /usr/local/tomcat/webapps/esri-proxy.tar.gz https://github.com/Esri/resource-proxy/archive/v1.1.2.tar.gz
#	tar -xvf /usr/local/tomcat/webapps/esri-proxy.tar.gz &&\
#	rm /usr/local/tomcat/webapps/esri-proxy.tar.gz