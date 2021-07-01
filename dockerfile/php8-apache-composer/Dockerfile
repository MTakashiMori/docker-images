FROM alpine:latest as web

RUN apk add --no-cache --virtual .phpize-deps $PHPIZE_DEP \
 openrc \
 curl \
 g++ \
 git \
 gcc \
 musl \
 make \
 php8 \
 php8-apache2 \
 php8-common \
 php8-curl \
 php8-ctype \
 php8-dev \
 php8-dom \
 php8-fileinfo \
 php8-iconv \
 php8-json \
 php8-gd \
 php8-mbstring \
 php8-opcache \
 php8-openssl \
 php8-pdo \
 php8-pdo_mysql \
 php8-pdo_pgsql \
 php8-pear \
 php8-phar \
 php8-redis \
 php8-simplexml \
 php8-tokenizer \
 php8-pecl-xdebug \
 php8-xml \
 php8-xmlreader \
 php8-xmlwriter \
 php8-zip \
 php8-zlib \
 apache2 

RUN ln -s /usr/bin/php8 /usr/bin/php

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY docker-files/php.ini /etc/php/php.ini

EXPOSE 80
