FROM tomcat:8.0-jre8-alpine

MAINTAINER Krennic

RUN apk add --no-cache curl && \
	curl -o /usr/local/tomcat/webapps/esri-proxy.tar.gz https://github.com/Esri/resource-proxy/releases && \
	tar -xvzf /usr/local/tomcat/webapps/esri-proxy.tar.gz && \
	rm /usr/local/tomcat/webapps/esri-proxy.tar.gz