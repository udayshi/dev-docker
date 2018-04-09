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
    php7-mbstring php7-gd php7-iconv

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    curl -LsS https://phar.phpunit.de/phpunit.phar -o /usr/local/bin/phpunit && \
    chmod +x /usr/local/bin/phpunit
RUN apk --no-cache add php7-redis   
RUN apk --no-cache add  php7-tokenizer php7-ctype
RUN composer self-update


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
RUN mkdir -p /app
WORKDIR /app

EXPOSE 80 443
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
