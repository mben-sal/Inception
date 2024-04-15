FROM alpine:3.12.0

# Installation de MariaDB et du client MariaDB en une seule instruction
RUN apk update && \
    apk add --no-cache mariadb mariadb-client
RUN apk add openrc
RUN openrc
RUN touch /run/openrc/softlevel

# Copie du script et attribution des permissions
COPY ./tools/script.sh /
RUN chmod +x /script.sh

# Définition de l'entrée par défaut pour exécuter le script
ENTRYPOINT ["/script.sh"]

CMD [ "tail", "-f", "/dev/null" ]
