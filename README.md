# Inception

VM : est une émulation d'un ordinateur physique , Elle permet d'exécuter plusieurs systèmes d'exploitation sur une seule machine physique en utilisant un logiciel appelé hyperviseur par contre Docker est une plateforme open-source qui permet de créer, déployer et gérer des applications dans des conteneurs/ 
VM ET DOCKER soient toutes deux utilisees pour virtualisation et l'isolation , de maniere differente 
la deference entre conteneur et vm 
	* conteneur ne reservez que les ressources necessaires , demarrez rapidement , ne besion pas des virtualisation des ressource mais seulement de isolation 
# pour quoi en etulise un conteneurs
	Les conteneurs offrent un environnement isolé pour exécuter des applications , exécutés sur n'importe quelle plateforme comme un ordinateur portable, un serveur cloud ou un centre de données. Les conteneurs partagent les ressources du système hôte 


-> C est quoi Docker ? 	
	 docker est un amelioration de lxc (lunix container ) commence comme une surcouche de lxc 
	Docker est une plateforme open-source qui permet de créer, déployer et gérer des applications dans des conteneurs et Les conteneurs sont des environnements logiciels légers et autonomes qui contiennent tout ce dont une application a besoin pour s'exécuter

-> container : Un conteneur est une instance isolée et exécutable d'une application

-> Image Docker : C'est une recette qui dit à Docker comment créer votre application dans c est  un modèle de lecture seule qui contient tous les éléments nécessaires pour exécuter une application

-> dockerfile : est un fichier texte qui contient une série d'instructions utilisées par Docker pour créer automatiquement une image Docker

=> Un registre est un logiciel permettant de partager des images avec d'autres personnes 


-> Dockerfile = est un ficher texte qui contient une serie  dinstruction utilisees 
# dockerfile :
Un Dockerfile est un fichier de configuration utilisé pour créer une image Docker 
= > FROM :  Par exemple, FROM debian:buster indique que votre image sera construite à partir de l'image Debian Buster 

= > RUN : permet d'exécuter des commandes dans l'image Docker en cours de construction.

= > COPY : L'instruction COPY copie des fichiers depuis le système de fichiers local dans l'image Docker. 

= > ADD : plus avance que copy ... il peux ajouter par exemple .zip ou URL 

= > WORKDIR : mkdir et cd au meme tempts 

= > EXPOSE : L'instruction EXPOSE indique les ports sur lesquels l'application en cours d'exécution dans le conteneur Docker écoute 

= > CMD : définit la commande par défaut à exécuter lorsqu'un conteneur basé sur cette image est démarré 

= > ENTRYPOINT : Cette commande ou ce script sera le point d'entrée principal du conteneur.

# adminer :
	Adminer est une application web open source, un gestionnaire de base de données qui permet aux administrateurs de bases de données de gérer leurs bases de données via une interface utilisateur conviviale et intuitive
* wget = est un outil puissant et polyvalent pour télécharger des fichiers à partir du Web de manière automatisée à l'aide de la ligne de commande.
* wget -O = pour zip des fils 
* apache2-foreground est la commande qui démarre le processus Apache HTTP Server à l'intérieur du conteneur Docker

# nginx :
est un serveur web 
* openssl : dans c est un logicielle open-source qui implémente des protocoles de sécurité tels que SSL  securite des communication entre les clients et serveurs et gestion de certificat  

pour start nginx = >  {/etc/nginx/sites-available#} ::  /etc/init.d/nginx start  


# mariadb : 
est un système de gestion de base de données , qui est largement compatible avec MySQL  

= >  mariadb est un version amelioree de mysql et automatiquement les commandes et concepts de mariadb sont generalement similaires a ceux de mysql danc Lorsque vous créez un conteneur MariaDB dans Docker, vous spécifiez les informations d'identification (telles que le nom d'utilisateur et le mot de passe) pour accéder à la base de données MariaDB dans ce conteneur , base de données MySQL" que vous mentionnez est probablement dû à l'héritage commun entre MySQL et MariaDB 

= > apk add openrc : install openrc pour arreter et gerer les services par exemeple 
par exemple :

Pour démarrer le service MariaDB : rc-service mariadb start
Pour arrêter le service MariaDB : rc-service mariadb stop
Pour activer le démarrage automatique de MariaDB au démarrage du système : rc-update add mariadb 


# wordpress 

est un système de gestion de contenu creer et gere des sites web 

= > curl est utilisé pour transférer des données sur le réseau

= > PHP-FPM  : est un gestionnaire de processus pour PHP pour améliorer les performances des serveurs web qui utilisent PHP pour générer des pages web dynamiques

= > php-cgi : est un moyen de communiquer entre le serveur web et le moteur PHP 

= > php-mysql : est une étape importante pour permettre à WordPress de communiquer avec la base de données MySQL 

* Qu’est-ce que WP-CLI ?

	WP-CLI est un outil en ligne de commande pour WordPress. Il permet de gérer les installations WordPress via des commandes, comme installer des plugins, créer des utilisateurs, mettre à jour WordPress, etc...
Voici quelques exemples de ce que vous pouvez faire avec WP-CLI :

* Installer WordPress.
* Mettre à jour WordPress, ses thèmes et ses plugins.
* Gérer les utilisateurs, les rôles et les autorisations.
* Activer, désactiver et supprimer des plugins et des thèmes.
* Créer, éditer et supprimer des publications et des pages.
* Exécuter des scripts personnalisés pour automatiser des tâches spécifiques.

= > Ainsi, la commande wp core download --allow-root télécharge les fichiers de base de WordPress sur votre système à partir des sources officielles de WordPress.org 

= > exec "$@", cela signifie que la commande spécifiée après exec sera exécutée avec les mêmes arguments que ceux passés au script shell 

# docker_compose 



(Dockerfile)-> build ->(Docker image)-> run ->(Docker container)

= > pour start docker & build docker image form dockerfile (cmd -> docker build -t "ex myapp" . )
= > pour check image (cmd  - > docker image)
= > pour run docker container from image (cmd - > docker run -d -p 8080:80 myapp)
= > pour check run container (cmd -> docker ps )
= > pour check container (cmd -> docker container ls)
= > pour enter dans votre container bash (cmd -> docker exec -it ${id} bash )
= > pour stop bcp des container (cmd - >  docker stop $(docker ps -qa) )
= > pour stop supprimer  des container (cmd - >  docker rm $(docker ps -qa) ) docker system prune -a 
= > commande pour annuler volume et ts  {{ docker stop $(docker ps -qa); docker rm $(docker ps -qa); docker rmi -f $(docker images -qa); docker volume rm $(docker volume ls -q); docker network rm $(docker network ls -q) 2>/dev/null  }} 
Quelle la différence entre HTTP et HTTPS ?
Comme son nom l'indique, le protocole de transfert hypertexte sécurisé (HTTPS) est une version plus sûre ou une extension du protocole HTTP. Avec HTTPS, le navigateur et le serveur établissent une connexion sécurisée et chiffrée avant de transférer des données. https -> 443 / http -> 80


site wordpress = > localhost/wp-admin

 # dockerfile :
Un Dockerfile est un fichier de configuration utilisé pour créer une image Docker 

*  dans un dockerfile une fois donner deux FROM le dockerfile base sur deuxieme FROM , 
en suite que tu donne plusieurs CMD le dockerfile execute la derniere cmd dans un dockerfile ,
plusieurs RUN dans un dockerfile = un grand sieze a l'image ,par contre un seule RUN minimise le sieze image 

exemple : 
```
FROM ubuntu

# Commande par défaut 1
CMD ["echo", "Hello World 1"]

# Commande par défaut 2
CMD ["echo", "Hello World 2"]
```
{{ apres build cette dockerfile et docker run "le nom d'imgae " il execute le dernier cmd }}  

= > FROM :  Par exemple, FROM debian:buster indique que votre image sera construite à partir de l'image Debian Buster

= > RUN : permet d'exécuter des commandes dans l'image Docker en cours de construction.

= > COPY : L'instruction COPY copie des fichiers depuis le système de fichiers local dans l'image Docker. 

= > ADD : plus avance que copy ... il peux ajouter par exemple .zip ou URL 

= > WORKDIR : mkdir et cd au meme tempts 

= > EXPOSE : L'instruction EXPOSE indique les ports sur lesquels l'application en cours d'exécution dans le conteneur Docker écoute 

= > CMD : définit la commande par défaut à exécuter lorsqu'un conteneur basé sur cette image est démarré 

=> ENTRYPOINT : définit une commande qui est toujours exécutée, avec la possibilité de passer des arguments supplémentaires à cette commande lors du démarrage du conteneur.


# run time et build time quelle la defirence entre deux  

	* quant nous parlons a run time c est entrypoint et cmd des commande qui travail en temps de run d image ... 
	* build time c est From et run ... sont des commande de build image qui donner un inflation sur sieze de image 

# docker_compose :

Docker Compose est un outil qui permet de définir et de gérer des applications multi-conteneurs Docker.
* Network (Réseau) : un réseau est un moyen de connecter des conteneurs entre eux pour qu'ils puissent communiquer. Par défaut, Docker crée un réseau isolé pour chaque application ou chaque conteneur.

isolation des services ,
* volume : Un volume Docker est un moyen de stocker des données persistantes utilisées par les conteneurs Docker. 


Apache : est un serveur web http / mysql : est un gestion de base de donner / php : est langage de script

# la difference entre HTTPS et HTTP ?

- HTTP : Les donnees sont transferes en texte clair  (par contre ) HTTPS : elles sont chiffrees securise


- network :
les container communique dans meme reseau qui me presente plusieurs avantege comme isolation , la facilite de configuration , la securite 


https://github.com/zakarm/Inception 

https://www.youtube.com/watch?v=sn6PlRf-UHk

les points pour evulations

Comment fonctionnent Docker et Docker Compose ?
La différence entre une image Docker utilisée avec Docker Compose et sans Docker Compose ? 
L'avantage de Docker par rapport aux VM ?
La pertinence de la structure des répertoires requise pour ce projet (un exemple est fourni dans le fichier PDF du sujet).? 


# pour enter dans un container de mariadb et check databases 
	- ( commande ) ===== >                             mysql -p 
	- pour enter specifier par exemple incetion ====>  user inception 
	- suite  ===== >                                   show tables
	- pour selection par exemple quells data ==== >    SELECT * FROM wp_users 
# pour setup adminer 

	- apres de setup la recette de adminer fais install 
		* apt-get update
		* apt-get install -y php
		* php -S 0.0.0.0:8060 -t /var/www/html


