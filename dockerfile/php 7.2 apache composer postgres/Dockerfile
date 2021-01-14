FROM alpine as web

RUN apk add --no-cache \
 openrc \
 curl \
 g++ \
 make \
 php7 \
 php7-dev \
 php7-gd \
 php7-pdo \
 php7-pdo_pgsql \
 php7-openssl \
 php7-zip \
 php7-tokenizer \
 php7-redis \
 php7-mbstring \
 php7-json \
 php7-xml \
 php7-xmlrpc \
 php7-apache2 \
 php7-curl \
 php7-fileinfo \
 php7-phar \
 php7-dom \
 php7-xmlwriter \
 php7-xmlreader \
 php7-simplexml \
 php7-ctype \
 php7-iconv \
 php7-zlib \
 php7-opcache \
 php7-pear \
 apache2 \
 nodejs \
 nodejs-npm \
 npm \
 yarn

RUN curl -sS https://getcomposer.org/installer | \
 php -- --install-dir=/usr/bin/ --filename=composer

RUN pecl install xdebug

COPY docker/php.ini /etc/php7/php.ini

EXPOSE 80
