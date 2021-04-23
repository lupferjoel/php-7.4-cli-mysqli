FROM php:7.4-cli

RUN docker-php-ext-install mysqli pdo pdo_mysql

RUN apt-get update && \
    apt-get install -y \
    libzip-dev \
    libjpeg62-turbo-dev \
    libpng-dev

RUN docker-php-ext-install gd
