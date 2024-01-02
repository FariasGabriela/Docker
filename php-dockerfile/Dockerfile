##Instalar o PHP
FROM php:7.4-cli AS builder

##Acessar no diretorio
WORKDIR /var/www

##Atualizar o apt get e instalar a lib libzip-dev
RUN apt-get update && \
    apt-get install libzip-dev -y && \
    docker-php-ext-install zip

##Instalar o docker composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');"

##Instalar o laravel
RUN php composer.phar create-project --prefer-dist laravel/laravel laravel

# ##Subir o "frontend"
# ENTRYPOINT ["php", "laravel/artisan", "serve"]

# CMD ["--host=0.0.0.0"]

#Diminuir o tamanho da imagem docker com multistage building
FROM php:7.4-fpm-alpine
WORKDIR /var/www
RUN rm -rf /var/www/html
COPY --from=builder /var/www/laravel .
RUN chown -R www-data:www-data /var/www
EXPOSE 9000
CMD ["php-fpm"]