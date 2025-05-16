FROM httpd:latest
MAINTAINER aniruddha
COPY index.html /usr/local/apache2/htdocs
RUN chmod -R 777 /usr/local/apache2/htdocs/index.html
EXPOSE 80
