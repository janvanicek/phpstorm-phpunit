FROM php:8.3-cli-alpine AS base

ENV COMPOSER_ALLOW_SUPERUSER=1

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

WORKDIR /app

FROM base AS dev


FROM base AS prod

RUN apk add --no-cache git

COPY composer.* /app/

RUN composer install --prefer-dist --no-interaction --no-scripts

COPY . /app/
