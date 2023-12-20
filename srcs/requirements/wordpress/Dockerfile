FROM debian:bullseye

EXPOSE 9000

RUN apt-get update -y && apt-get install wget -y \
    && apt-get install php-mysql php7.4-fpm mariadb-client -y \
    && wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

COPY tools/wp_setup.sh .

COPY conf/www.conf  /etc/php/7.4/fpm/pool.d/

RUN chmod +x wp_setup.sh && mkdir -p /run/php

CMD [ "./wp_setup.sh" ]
