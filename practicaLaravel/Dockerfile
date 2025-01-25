FROM php:8.2-cli

RUN apt-get update && apt-get install -y \
    unzip curl \
    && docker-php-ext-install pdo pdo_mysql

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www

COPY . .


