FROM amazonlinux:2
MAINTAINER ADDRESS "koteswarao"
RUN yum update
RUN yum install httpd -y
WORKDIR /var/www/hml
COPY ./ .
CMD ["httpd","-D","FOREGROUND"]
EXPOSE 80
