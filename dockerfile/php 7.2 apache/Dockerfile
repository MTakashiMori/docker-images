FROM alpine as os
LABEL name="Marcelo Takashi <mtakashi.mori@gmail.com>"

RUN apk add --update --no-cache \
  bash curl ca-certificates openssl openssh git tzdata openntpd nano \
  apache2 php7-apache2 \
  php7 \
  php7-phar \
  php7-json \
  php7-iconv \
  php7-openssl \
  php7-ftp \
  php7-xdebug \
  php7-mcrypt \
  php7-soap \
  php7-gmp \
  php7-pdo_odbc \
  php7-dom \
  php7-pdo \
  php7-zip \
  php7-mysqli \
  php7-sqlite3 \
  php7-pdo_pgsql \
  php7-bcmath \
  php7-gd \
  php7-odbc \
  php7-pdo_mysql \
  php7-pdo_sqlite \
  php7-gettext \
  php7-xmlreader \
  php7-xmlrpc \
  php7-bz2 \
  php7-pdo_dblib \ 
  php7-curl \
  php7-ctype \
  php7-exif \
  php7-zlib

# Add apache to run and configure
RUN mkdir -p /run/apache2 \
  && sed -i "s/#LoadModule\ rewrite_module/LoadModule\ rewrite_module/" /etc/apache2/httpd.conf \
  && sed -i "s/#LoadModule\ session_module/LoadModule\ session_module/" /etc/apache2/httpd.conf \
  && sed -i "s/#LoadModule\ session_cookie_module/LoadModule\ session_cookie_module/" /etc/apache2/httpd.conf \
  && sed -i "s/#LoadModule\ session_crypto_module/LoadModule\ session_crypto_module/" /etc/apache2/httpd.conf \
  && sed -i "s/#LoadModule\ deflate_module/LoadModule\ deflate_module/" /etc/apache2/httpd.conf \
  && sed -i "s#^DocumentRoot \".*#DocumentRoot \"/var/www/html/app\"#g" /etc/apache2/httpd.conf \
  && sed -i "s#/var/www/localhost/htdocs#/var/www/html/app#" /etc/apache2/httpd.conf \
  && printf "\n<Directory \"/var/www/html/app\">\n\tAllowOverride All\n</Directory>\n" >> /etc/apache2/httpd.conf

RUN mkdir -p /var/www/html/app \
  && chown -R apache:apache /var/www/html/app \
  && chmod -R 755 /var/www/html/app

EXPOSE 80