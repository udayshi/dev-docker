FROM  mhart/alpine-node

RUN apk --no-cache add supervisor curl vim bash git wget
RUN npm i nodemon express-generator -g



# Configure supervisord
COPY manifest/config/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY manifest/init.sh /usr/local/bin/init_node.sh

# Add application

WORKDIR /var/www/html
COPY manifest/src/ /var/www/html/
RUN cd /var/www/html/ && npm i express && chmod +x /usr/local/bin/init_node.sh
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]