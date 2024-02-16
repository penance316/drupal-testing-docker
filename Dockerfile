FROM php:8.1-fpm
RUN apt-get update && apt-get install -y zip unzip libfreetype6-dev libjpeg62-turbo-dev libpng-dev git libicu-dev g++ libzip-dev
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
# Configure and install the extension
RUN docker-php-ext-configure gd --with-jpeg
RUN docker-php-ext-install -j$(nproc) gd
RUN docker-php-ext-install intl zip
