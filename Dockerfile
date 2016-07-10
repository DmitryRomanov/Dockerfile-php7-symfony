FROM php:7

VOLUME /usr/src/myapp
WORKDIR /usr/src/myapp

EXPOSE 8000
CMD [ "php", "bin/console", "server:run", "0.0.0.0:8000" ]

