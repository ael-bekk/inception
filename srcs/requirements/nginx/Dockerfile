FROM debian:buster

RUN apt-get update && apt-get -y install nginx openssl \
    && openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=US/ST=California/L=San Francisco/O=Example Company/OU=IT/CN=localhost/emailAddress=none@none.com" \
    && openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048

COPY  conf/conf /etc/nginx/sites-available/default


CMD [ "nginx", "-g", "daemon off;" ]
