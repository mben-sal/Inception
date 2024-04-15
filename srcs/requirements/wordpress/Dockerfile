FROM debian:buster

WORKDIR /var/www/html/wordpress

RUN apt-get update
RUN apt-get install -y \
        curl \
        php-fpm \
        php-cgi \
        php-mysql

COPY	./tools/script.sh /
RUN		chmod +x /script.sh
ENTRYPOINT	["/script.sh"]
