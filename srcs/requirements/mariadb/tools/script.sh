#!/bin/sh

# Vérification si le répertoire de la base de données existe
if [ ! -d "/var/lib/mysql/ib_buffer_pool" ]; then
    # Configuration initiale de MariaDB et démarrage du service
    /etc/init.d/mariadb setup
    /etc/init.d/mariadb start
	
    # Création de la base de données et des utilisateurs
    mysql -u ${DB_ROOT_USER} -e "CREATE DATABASE IF NOT EXISTS ${DB_NAME};"
    mysql -u ${DB_ROOT_USER} -e "CREATE USER '${DB_USER}'@'localhost' IDENTIFIED BY '${DB_PASSWORD}';"
    mysql -u ${DB_ROOT_USER} -e "GRANT ALL PRIVILEGES ON *.* TO '${DB_USER}'@'localhost' IDENTIFIED BY '${DB_PASSWORD}';"
    mysql -u ${DB_ROOT_USER} -e "CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';"
    mysql -u ${DB_ROOT_USER} -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';"
    mysql -u ${DB_ROOT_USER} -e "ALTER USER '${DB_USER}'@'localhost' IDENTIFIED BY '${DB_PASSWORD}';"
    mysql -u ${DB_ROOT_USER} -e "ALTER USER '${DB_ROOT_USER}'@'localhost' IDENTIFIED BY '${DB_PASSWORD}';"

    # Modification de la configuration pour autoriser les connexions à distance
    sed -i 's/skip-networking/# skip-networking/g' /etc/my.cnf.d/mariadb-server.cnf 
fi

# Démarrage et arrêt du service MariaDB pour s'assurer que le processus est bien arrêté
rc-service mariadb start
rc-service mariadb stop

# Exécution de MariaDB en tant que démon
/usr/bin/mariadbd --basedir=/usr --datadir=/var/lib/mysql --plugin-dir=/usr/lib/mariadb/plugin --user=mysql --pid-file=/run/mysqld/mariadb.pid
