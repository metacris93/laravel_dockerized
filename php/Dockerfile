FROM php:7.4-fpm-alpine

WORKDIR /var/www/html

RUN docker-php-ext-install pdo pdo_mysql

RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

COPY --chown=laravel:laravel src .

RUN chmod -R o+w storage bootstrap/cache

USER laravel

CMD ["php-fpm"]