FROM php:8.3.9-fpm-alpine3.20

RUN apk add --no-cache \
    libpq-dev bash \
    postgresql-dev \
    && docker-php-ext-install pdo pdo_pgsql \
    && apk del --purge --no-cache

# Instalar Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN deluser www-data && adduser -u 1000 -D -H -s /sbin/nologin www-data

WORKDIR /var/www/html/slim_api

USER www-data

EXPOSE 9000
