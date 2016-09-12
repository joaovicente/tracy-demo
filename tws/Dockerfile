FROM tomcat:8.0.20-jre8
MAINTAINER Joao Vicente <joao.diogo.vicente@gmail.com>
RUN echo 'export CATALINA_OPTS="$CATALINA_OPTS -Xms2g -Xmx2g -XX:MaxPermSize=1024m"' > /usr/local/tomcat/bin/setenv.sh
RUN chmod +x /usr/local/tomcat/bin/setenv.sh
ADD https://github.com/joaovicente/tracy-web-services/releases/download/v0.2.1/tws.war /usr/local/tomcat/webapps
EXPOSE 8080
