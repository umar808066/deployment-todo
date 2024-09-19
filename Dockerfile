FROM ubuntu:latest

LABEL DEVOPSENGG="UMAR"

RUN apt update 
RUN apt install unzip apache2 -y
RUN rm -rf /var/www/html/index.html

WORKDIR /var/www/html 
COPY todo.zip .

RUN unzip todo.zip
RUN mv todo/* .

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
