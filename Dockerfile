FROM tomcat:8.0-jre8-alpine

MAINTAINER Krennic

WORKDIR /usr/local/tomcat/webapps

RUN apk add --no-cache curl tar &&\
	curl -o esri-proxy.tar.gz https://codeload.github.com/Esri/resource-proxy/tar.gz/v1.1.2 &&\
	tar -xvf esri-proxy.tar.gz &&\
	rm esri-proxy.tar.gz