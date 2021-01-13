FROM php:7.4-fpm-alpine
MAINTAINER Firaga <zhou.jichen@gmail.com>
USER root
RUN docker-php-ext-install pdo pdo_mysql
RUN mkdir /var/log/php-fpm \
    && chown www-data:www-data /var/log/php-fpm \
    && mkdir -p /var/lib/php/session \
    && chown www-data:www-data /var/lib/php/session
