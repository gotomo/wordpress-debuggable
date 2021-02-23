FROM wordpress:5.0.3-php7.3

COPY ./php.ini /usr/local/etc/php/conf.d/wp-debuggable.ini

RUN pecl install xdebug && \
    docker-php-ext-enable xdebug
