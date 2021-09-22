FROM php:7.4-apache

RUN apt-get update \
    && apt-get install -y \
        libzip-dev \
        libonig-dev \
        git \
        curl \
        vim \
    && apt-get clean \
    && a2enmod rewrite \
    && docker-php-ext-install \
        zip \
        mbstring \
        pdo_mysql \
        mysqli \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer