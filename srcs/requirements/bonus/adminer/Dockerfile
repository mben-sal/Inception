# Utilisation de l'image officielle PHP avec Apache
FROM debian:buster

WORKDIR /var/www/html/adminer

# Mise à jour des paquets et installation des dépendances nécessaires
RUN apt-get update \
    && apt-get install -y wget \
    && rm -rf /var/lib/apt/lists/*

# Téléchargement de la dernière version de Adminer
RUN	wget -O /var/www/html/adminer/adminer.php "https://www.adminer.org/latest.php" \
    && mv /var/www/html/adminer/adminer.php /var/www/html/adminer/index.php

# Exposer le port 80
EXPOSE 8080


# Point d'entrée pour démarrer un serveur web PHP intégré écoutant sur le port 8080
CMD ["php -S 0.0.0.0:8080"]
