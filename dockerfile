FROM ubuntu
RUN apt-get update
RUN apt install apache2 -y
RUN apt-get install apache2-utils -y
RUN apt-get clean
COPY ./index.html /var/www/html/index.html
EXPOSE 80
ENTRYPOINT ["apache2ctl", "-D", "FOREGROUND"]
