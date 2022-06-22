FROM php:7.4-fpm

WORKDIR /var/www/html

RUN docker-php-ext-install pdo pdo_mysql

RUN useradd -G www-data,root -u 1000 -d /home/laravel laravel

COPY --chown=laravel:laravel src .

USER laravel

EXPOSE 9000

CMD ["php-fpm"]