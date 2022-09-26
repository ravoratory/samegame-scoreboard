FROM php:8.1-apache-bullseye
WORKDIR /var/www/laravel
RUN apt update \
  && apt install -y \
  g++ \
  libicu-dev \
  libpq-dev \
  libzip-dev \
  zip \
  zlib1g-dev \
  && docker-php-ext-install \
  intl \
  opcache \
  pdo

COPY --from=composer:2.4 /usr/bin/composer /usr/bin/composer