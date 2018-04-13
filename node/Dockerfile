FROM  mhart/alpine-node

RUN apk --no-cache add supervisor curl vim bash git wget
RUN npm i yarn -g
RUN yarn global add nodemon express-generator @angular/cli create-react-app --prefix/usr/local
RUN yarn global add vue-cli gulp --prefix/usr/local






# Configure supervisord
COPY manifest/config/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY manifest/config/nginx.conf /etc/nginx/nginx.conf

#COPY manifest/init.sh /usr/local/bin/init_node.sh

# Add application
RUN mkdir /app
COPY manifest/src/ /app
WORKDIR /app
RUN  yarn add express && chmod +x /usr/local/bin/init_node.sh
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]