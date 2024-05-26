#!/bin/bash

# install WP-CLI
sed -i 's/listen = \/run\/php\/php7.4-fpm.sock/listen = 9000/g' /etc/php/7.4/fpm/pool.d/www.conf
mkdir /run/php
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

# Téléchargement de WordPress
wp core download --allow-root

# Création du fichier de configuration
wp config create --dbhost=${DB_HOST} --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASSWORD} --allow-root

# WordPress est installé avec les informations fournies
wp core install --url=https://localhost --title=${WP_TITLE} --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PASSWORD} --admin_email=${WP_ADMIN_MAIL} --allow-root

# Création d'un utilisateur
wp user create ${WP_USER} mben-sal@gmail.com --user_pass=${WP_PASSWORD} --allow-root
/usr/sbin/php-fpm7.4 -F 

# Exécuter la commande ou le script passé en argument avec tous les arguments
exec "$@"
