# Utilisation de l'image officielle PHP avec Apache
FROM debian:buster

WORKDIR /var/www/html/adminer

# Mise à jour des paquets et installation des dépendances nécessaires
RUN apt-get update \
    && apt-get install -y wget \
    && rm -rf /var/lib/apt/lists/*

# # Téléchargement de la dernière version de Adminer
# RUN mkdir /var/www/html/adminer \
#     && wget -O /var/www/html/adminer/adminer.php "https://www.adminer.org/latest.php" \
#     && mv /var/www/html/adminer/adminer.php /var/www/html/adminer/index.php

RUN	wget -O /var/www/html/adminer/adminer.php "https://www.adminer.org/latest.php" \
    && mv /var/www/html/adminer/adminer.php /var/www/html/adminer/index.php

# # Exposer le port 80
EXPOSE 8080

# # Définir le répertoire de travail
# WORKDIR /var/www/html/adminer

# Point d'entrée
CMD ["apache2-foreground"]
