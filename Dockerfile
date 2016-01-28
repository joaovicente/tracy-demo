FROM tomcat:8.0.20-jre8
MAINTAINER Joao Vicente <joao.diogo.vicente@gmail.com>
ADD https://github.com/joaovicente/tracy-web-services/releases/download/v0.1.0/tws.war /usr/local/tomcat/webapps
ADD https://github.com/joaovicente/tracy-web-app/releases/download/v0.6.0/twa.war /usr/local/tomcat/webapps
EXPOSE 8080
