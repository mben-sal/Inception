FROM debian:bullseye

WORKDIR /var/www/html/wordpress

RUN apt-get update
RUN apt-get install -y \
# utilise pour transfrer des donner sur resaux
        curl \
#  un gestionnaire, utilisent pour générer des pages web dynamiques
		php7.4-fpm \
# est un moyen de communiquer entre le serveur web et le moteur PHP 
        php-cgi \
#communiquer avec la base de données MySQL 
        php-mysql

COPY	./tools/script.sh /
RUN		chmod +x /script.sh
ENTRYPOINT	["/script.sh"]