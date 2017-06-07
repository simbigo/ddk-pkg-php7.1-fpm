FROM php:7.1-fpm

RUN set -x && cd / && rm -rf /var/www/html

RUN set -x && docker-php-ext-install -j$(nproc) pdo pdo_mysql

COPY map-user.sh /usr/local/bin/map-user.sh
RUN chmod +x /usr/local/bin/map-user.sh

WORKDIR /var/www