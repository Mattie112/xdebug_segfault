FROM php:8.0-cli
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/
RUN install-php-extensions xdebug
COPY ./xdebug.ini $PHP_INI_DIR/conf.d/xdebug.ini
