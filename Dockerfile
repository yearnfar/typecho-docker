FROM php:7.2.9-fpm

ENV LANG C.UTF-8

COPY sources.list /etc/apt/sources.list
COPY php.ini /usr/local/etc/php/php.ini

RUN rm -f /etc/apt/sources.list.d/* \
&& apt-get update \
&& docker-php-ext-install pdo_mysql \
&& chmod -R 777 /var/www/html