FROM php:7.2.1-apache

# maintainer info
MAINTAINER "Mirza Oglecevac oglecevacmirza@gmail.com"

ENV RESPONDER responder

RUN apt-get update && apt-get install -y curl && apt-get install -y nano

WORKDIR /var/www/html

COPY . .

# restart apache
RUN service apache2 restart

# expose port 80 of the container
EXPOSE 80

# start apache in foreground
CMD apachectl -D FOREGROUND

# STEPS
# docker build -t caller:v1 .
# docker run -d -p 8250:80 --network api --name caller caller:v1