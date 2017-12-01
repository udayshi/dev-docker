FROM alpine:3.6
MAINTAINER shiuday@gmail.com

RUN apk upgrade --update && apk --no-cache add \
            curl \
            vim \
            bash \
            git \
            wget \
            supervisor \
            nginx

RUN apk --no-cache add php7 php7-fpm php7-mysqli php7-json php7-openssl php7-curl \
    php7-zlib php7-xml php7-phar php7-intl php7-dom php7-xmlreader php7-ctype \
    php7-mbstring php7-gd

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    curl -LsS https://phar.phpunit.de/phpunit.phar -o /usr/local/bin/phpunit && \
    chmod +x /usr/local/bin/phpunit
RUN apk --no-cache add php7-redis   
RUN apk --no-cache add  php7-tokenizer php7-ctype
#RUN mkdir -p /usr/local/src && cd /usr/local/src && \
#composer create-project --prefer-dist laravel/laravel laravel && \
#composer create-project symfony/skeleton sf4 && \
#composer create-project symfony/skeleton sf3  "3.4.*" && \
#composer create-project zendframework/skeleton-application zf2 "2.*" && \
#composer create-project zendframework/skeleton-application zf3 && \
# tar -zcf laravel.tar.gz laravel/ && tar -zcf sf4.tar.gz sf4/ && tar -zcf sf3.tar.gz sf3/ && tar -zcf zf3.tar.gz zf3/ && && tar -zcf zf2.tar.gz zf2/ && \
#rm -rf laravel sf4 sf3 zf2 zf3





# Cleaning up
RUN rm -rf /usr/local/src /tmp/* /usr/share/man /var/cache/apk/*

# Configure nginx
COPY manifest/config/nginx.conf /etc/nginx/nginx.conf
# Configure PHP-FPM
COPY manifest/config/fpm-pool.conf /etc/php7/php-fpm.d/fpm-pool_custom.conf
COPY manifest/config/php.ini /etc/php7/conf.d/php_custom.ini

# Configure supervisord
COPY manifest/config/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Add application
RUN mkdir -p /var/www/html
WORKDIR /var/www/html
COPY manifest/src/ /var/www/html/
RUN mkdir /usr/local/src && cp -a /var/www/html/*.tar.gz /usr/local/src


EXPOSE 80 443
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
