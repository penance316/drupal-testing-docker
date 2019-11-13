FROM php:7.2-fpm
RUN apt-get update && apt-get install -y zip unzip libfreetype6-dev libjpeg62-turbo-dev libpng-dev git libicu-dev g++
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
# Configure and install the extension
RUN docker-php-ext-configure gd --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install -j$(nproc) gd
RUN docker-php-ext-install intl zip
RUN composer require phpunit/phpunit ^6