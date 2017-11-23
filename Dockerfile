FROM tomcat:8.0-jre8-alpine

MAINTAINER Krennic

RUN apk add --no-cache curl && \
	curl https://github.com/Esri/resource-proxy/releases -o /usr/local/tomcat/webapps/esri-proxy.tar.gz && \
	tar -xvzf /usr/local/tomcat/webapps/esri-proxy.tar.gz && \
	rm /usr/local/tomcat/webapps/esri-proxy.tar.gz