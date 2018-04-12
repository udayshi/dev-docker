FROM  udaysh/debian-8-slim
COPY ./node-v8.11.1-linux-x64.tar /usr/local
WORKDIR /usr/local
RUN tar xf node-v8.11.1-linux-x64.tar && mv node-v8.11.1-linux-x64 node-v8.11.1
WORKDIR /usr/bin
RUN ln -s /usr/local/node-v8.11.1/bin/node . && ln -s /usr/local/node-v8.11.1/lib/node_modules/npm/bin/npm-cli.js npm




RUN npm i yarn -g --prefix/usr/
RUN ln -s /usr/local/node-v8.11.1/lib/node_modules/yarn/bin/yarn .
RUN yarn global add nodemon express-generator @angular/cli create-react-app --prefix/usr/
RUN yarn global add vue-cli gulp --prefix/usr






# Configure supervisord
COPY manifest/config/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY manifest/init.sh /usr/local/bin/init_node.sh

# Add application
WORKDIR /var/www/html
COPY manifest/src/ /var/www/html/
RUN cd /var/www/html/ && yarn add express && chmod +x /usr/local/bin/init_node.sh
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]