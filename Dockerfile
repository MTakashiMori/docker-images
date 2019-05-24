FROM alpine as web
LABEL name=mtakashi.mori@gmail.com
RUN apk update && apk upgrade && apk add --no-cache git nano curl openssl php7 php7-ctype php7-curl php7-dom php7-fpm php7-fileinfo php7-gd php7-intl php7-iconv php7-json php7-pdo_mysql php7-pecl-xdebug which \
    php7-mbstring php7-openssl php7-opcache php7-phar php7-pdo_pgsql php7-pdo_sqlite php7-sqlite3 php7-pcntl php7-posix php7-soap php7-simplexml php7-session php7-tokenizer php7-xmlwriter php7-xml php7-zlib php7-xdebug\
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && chmod +x /usr/local/bin/composer && chmod +x /usr/local/bin/composer 

EXPOSE 80
