FROM tomcat:8.0-jre8-alpine

MAINTAINER Krennic

RUN apk add --no-cache curl tar &&\
	curl -o /usr/local/tomcat/webapps/esri-proxy.tar.gz https://codeload.github.com/Esri/resource-proxy/tar.gz/v1.1.2 &&\
	tar -xvf /usr/local/tomcat/webapps/esri-proxy.tar.gz &&\
	rm /usr/local/tomcat/webapps/esri-proxy.tar.gz