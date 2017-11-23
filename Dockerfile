FROM tomcat:8.0-jre8-alpine

MAINTAINER Krennic

RUN curl https://github.com/Esri/resource-proxy/releases -o /usr/local/tomcat/webapps/esri-proxy.tar.gz &&\
	tar -xvzf esri-proxy.tar.gz && \
	rm esri-proxy.tar.gz