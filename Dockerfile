FROM php:7.1

RUN buildDeps="libpq-dev libzip-dev " \
    && apt-get update \
    && apt-get install -y $buildDeps --no-install-recommends \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install pdo pdo_pgsql pgsql bcmath

VOLUME /usr/src/myapp
WORKDIR /usr/src/myapp

EXPOSE 8000
CMD [ "php", "bin/console", "server:run", "0.0.0.0:8000" ]
