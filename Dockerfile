FROM php:7.4-cli

RUN apt-get update && \
    apt-get install -y \
    libzip-dev \
    libjpeg-dev \
    libpng-dev

RUN docker-php-ext-configure gd --enable-gd --with-jpeg

RUN docker-php-ext-install gd mysqli pdo pdo_mysql exif
