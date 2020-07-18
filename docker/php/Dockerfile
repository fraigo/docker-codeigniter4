# Based on https://github.com/sclorg/s2i-php-container/blob/master/7.1/Dockerfile
FROM php:7.2.32-apache-stretch

RUN apt-get update -y

#php-intl
RUN apt-get install -y libicu-dev && docker-php-ext-install intl


# RUN echo $PHP_INI_DIR
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

# php composer
# WORKDIR /opt/rh/php${PHP_VER_SHORT}/root/usr/bin
# RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
# RUN php composer-setup.php
# RUN rm composer-setup.php
# RUN echo 'alias composer="php /opt/rh/php${PHP_VER_SHORT}/root/usr/bin/composer.phar"' >> ~/.bashrc

# RUN sed -i 's/^short_open_tag = Off/short_open_tag = On/g' $PHP_INI
# RUN sed -i 's/^upload_max_filesize = 2M/upload_max_filesize = 50M/' $PHP_INI
# RUN sed -i 's/^post_max_size = 8M/post_max_size = 50M/' $PHP_INI
# RUN sed -i 's/^;date.timezone =/date.timezone = UTC/' $PHP_INI
# RUN sed -i 's#^;error_log = syslog#error_log = /var/log/php_error#' $PHP_INI
# RUN sed -i 's/^default_socket_timeout = 60/default_socket_timeout = 120/' $PHP_INI
# RUN sed -i 's/^memory_limit = 128M/memory_limit = 400M/' $PHP_INI
# RUN sed -i 's/^; max_input_vars = 1000/max_input_vars = 10000/' $PHP_INI



