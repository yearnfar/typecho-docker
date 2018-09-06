FROM php:7.2.9-fpm

# 解决中文乱码问题
ENV LANG C.UTF-8

# 更换官方apt-get源，使用163.com的源
COPY sources.list /etc/apt/sources.list

# 添加php.ini配置
COPY php.ini /usr/local/etc/php/php.ini

# 删除官方其他源并更新源，安装pdo-mysql扩展，更改/var/www/html目录权限
RUN rm -f /etc/apt/sources.list.d/* \
&& apt-get update \
&& docker-php-ext-install pdo_mysql \
&& chmod -R 777 /var/www/html