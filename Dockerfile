FROM httpd:latest
MAINTAINER aniruddha
COPY index.html /usr/local/apache2/htdocs
EXPOSE 80
