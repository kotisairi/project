FROM ubuntu
MAINTAINER ADDRESS "koteswarao"
RUN apt update
RUN apt install apache2 -y
WORKDIR /var/www/html
COPY ./index.html ./
CMD ["apachectl","-D","FOREGROUND"]
EXPOSE 80
