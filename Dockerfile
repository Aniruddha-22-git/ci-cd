FROM tomcat:9
MAINTAINER aniruddha
#COPY index.html /usr/local/apache2/htdocs
#RUN chmod -R 777 /usr/local/apache2/htdocs/index.html
ADD https://tomcat.apache.org/tomcat-6.0-doc/appdev/sample/sample.war /usr/local/tomcat/webapps/
EXPOSE 8080
#CMD ["catalina.sh", "run"]
