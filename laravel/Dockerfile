FROM udaysh/php7
MAINTAINER shiuday@gmail.com

# Configure nginx
COPY manifest/nginx.conf /etc/nginx/nginx.conf
# Configure PHP-FPM
COPY manifest/fpm-pool.conf /etc/php7/php-fpm.d/fpm-pool_custom.conf
COPY manifest/php.ini /etc/php7/conf.d/php_custom.ini

# Configure supervisord
COPY manifest/supervisord.conf /etc/supervisor/conf.d/supervisord.conf


# Add application
RUN mkdir -p /app
WORKDIR /app

COPY ./src/laravel.tar.gz /app
RUN tar -zxf laravel.tar.gz
RUN mv laravel/* . && rm -rf laravel

EXPOSE 80 443
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
