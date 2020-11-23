FROM node:10-alpine
WORKDIR /var/www
RUN apk add autoconf \
            gcc \
            g++ \
            libtool \
            nasm \
            make \
            automake \
            pcre-dev \
            libgit2-dev \
            file \
            util-linux \
            nginx \
            php \
            php-fpm 
            
COPY ./init.sh /
COPY ./default.conf /etc/nginx/conf.d/default.conf
RUN chmod +x /init.sh

EXPOSE 80
EXPOSE 9000

ENTRYPOINT [ "/init.sh" ]            
