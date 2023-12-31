FROM php:8.2.10-fpm

RUN apt-get update && apt-get install -y \
    git \
    curl \
    zip \
    nano \
    unzip

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www