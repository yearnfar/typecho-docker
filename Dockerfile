FROM php:7.2.9-fpm

# 解决中文乱码问题
ENV LANG C.UTF-8

# 替换 php.ini
COPY php.ini /usr/local/etc/php/php.ini

# 更换 科大的源
RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
&& rm -f /etc/apt/sources.list.d/* \ 
&& apt-get update \
&& docker-php-ext-install pdo_mysql \
&& chmod -R 777 /var/www/html