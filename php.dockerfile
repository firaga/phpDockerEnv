FROM php:7.4-fpm-alpine
MAINTAINER Firaga <zhou.jichen@gmail.com>
USER root
RUN mkdir /var/log/php-fpm \
    && chown www-data:www-data /var/log/php-fpm \
    && mkdir -p /var/lib/php/session \
    && chown www-data:www-data /var/lib/php/session \
    && apk update \
    && apk add autoconf \
    && apk add gcc g++ \
    && apk add make \
    && pecl install redis \
    && docker-php-ext-enable redis pdo pdo_mysql
