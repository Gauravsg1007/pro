FROM ubuntu:18.04
RUN apt-get update && apt-get install default-jre -y
ADD apache-tomcat-9.0.76.tar.gz /data/tomcat
COPY gameoflife.war /data/tomcat/apache-tomcat-9.0.76/webapps
EXPOSE 8080
CMD /data/tomcat/apache-tomcat-9.0.67/bin/catalina.sh run
