FROM debian:buster

WORKDIR /var/www/html

RUN rm -fr *

RUN apt-get update && apt-get -y install curl php7.3 php7.3-fpm php7.3-mysql sed\
    && curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -o /usr/local/bin/wp \
    && chmod +x /usr/local/bin/wp

COPY conf/www.conf /etc/php/7.3/fpm/pool.d/

RUN mkdir /run/php

COPY tools/script.sh .

RUN chmod +x script.sh

CMD [ "bash", "script.sh" ]
