FROM tomcat:8.0-jre8-alpine

MAINTAINER Krennic

WORKDIR /usr/local/tomcat/webapps

ENV TERM=xterm

RUN apk add --no-cache curl tar nano &&\
	curl -o esri-proxy.tar.gz https://codeload.github.com/Esri/resource-proxy/tar.gz/v1.1.2 &&\
	tar -xvf esri-proxy.tar.gz &&\
	mkdir esri-proxy &&\
	cp -R resource-proxy-1.1.2/Java/* esri-proxy/ &&\
	rm -rf resource-proxy-1.1.2 &&\
	rm esri-proxy.tar.gz