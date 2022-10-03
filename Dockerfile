FROM tomcat
RUN apt update -y
RUN apt upgrade -y
RUN apt install vim -y
COPY sample /usr/local/tomcat/webapps
#ADD https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war /usr/local/tomcat/webapps
#ADD sample.war /usr/local/tomcat/webapps
#CMD [ "catalina.sh","run" ]
ENTRYPOINT [ "catalina.sh","run" ]
EXPOSE 8080
