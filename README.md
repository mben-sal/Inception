# Inception
	c est un projet de 42 school qui lui donner un plusieurs information a propos de dommaine de docker et container dans ce projet nous allons cree wordpress site web avec un serveur nginx et data base mariadb .... mais avant tous c est obliges de bien comprendre plusieurs outiles

# c'est quoi un VM , Docker et quelle la defirrence entre deux 

-> VM : 
	 est une émulation d'un ordinateur physique , Elle permet d'exécuter plusieurs systèmes d'exploitation sur une seule machine physique en utilisant un logiciel appelé hyperviseur par contre Docker est une plateforme open-source qui permet de créer, déployer et gérer des applications dans des conteneurs

->  Docker :	
	  est un amelioration de lxc (lunix container ) commence comme une surcouche de lxc 
	Docker est une plateforme open-source qui permet de créer, déployer et gérer des applications dans des conteneurs et Les conteneurs sont des environnements logiciels légers et autonomes qui contiennent tout ce dont une application a besoin pour s'exécuter
- > VM ET DOCKER soient toutes deux utilisees pour virtualisation et l'isolation , de maniere differente 

En parle maintenant de Docker deja connu que le Docker est une plateforme open-source (creer gerer et deployer des application dans un conteneurs )

#comment travail un docker et c est quoi un container ?

voila un image qui resume le travail dans docker 

(./images/0_ktslXG-epHCuKj-5.png )

# namespace :

les namespaces sont des mécanismes qui permettent d'isoler et de séparer les ressources système entre les différents conteneurs, assurant ainsi une meilleure gestion des ressources et une isolation sécurisée.

# containerd :
containerd est un runtime de conteneurs développé par Docker qui gère le cycle de vie d’un conteneur sur une machine physique ou virtuelle (c’est-à-dire un hôte). Il crée, lance, arrête et supprime les conteneurs

- download ubuntu image iso
- setup the virtual machine with ubuntu
- install vim openssh-server make net-tools
- install docker from https://docs.docker.com/engine/install/ubuntu/
- connect using ssh from the terminal
- copy the folder from the machine to vm using scp
en resume 
* containerd == > runtime de conteneurs (il cree , lance, arrete et supprimer les conteneurs )

* namespace == > sont des mecanismes de separation des ressources systeme entre les deffirence conteneurs ,

* cgroupe == > c est mecanisme de controle et limiter les ressources systeme telle que le processe la memoire le stockage ..

grace a docker en peux execute plusieurs containers ...
# c'est quoi un container ?

- container : est un processe qui partager les ressources directement avec hote, demarrez rapidement, par contre VM qui reserver un espace memoire et RAM perde bcp des espaces sans etulise pour cette reson le container plus pratique que VM ...

# pour quoi en etulise un conteneurs
	Les conteneurs offrent un environnement isolé pour exécuter des applications , exécutés sur n'importe quelle plateforme comme un ordinateur portable, un serveur cloud ou un centre de données. Les conteneurs partagent les ressources du système hôte 

Maintenant en passe comment pratique ! mais avant tous j'ai donner quelle definition des outiles 
# dockerfile 

Un Dockerfile est un fichier de configuration utilisé pour créer une image Docker dans un dockerfile , je preparer un recette d'un application

= > FROM :  Par exemple, FROM debian:buster indique que votre image sera construite à partir de l'image Debian Buster 

= > RUN : permet d'exécuter des commandes dans l'image Docker en cours de construction.

= > COPY : L'instruction COPY copie des fichiers depuis le système de fichiers local dans l'image Docker. 

= > ADD : plus avance que copy ... il peux ajouter par exemple .zip ou URL 

= > WORKDIR : mkdir et cd au meme tempts 

= > EXPOSE : L'instruction EXPOSE indique les ports sur lesquels l'application en cours d'exécution dans le conteneur Docker écoute 

= > CMD : définit la commande par défaut à exécuter lorsqu'un conteneur basé sur cette image est démarré 

= > ENTRYPOINT : Cette commande ou ce script sera le point d'entrée principal du conteneur.

voila un image de Dockerfile

(./images/image_dockerfile.png) 

apres cette etape en passe de build dockerfile pour transfer d'un image 

voila un images qui resume cette etape :

(./images/build.png)

-> Image Docker : C'est une recette qui dit à Docker comment créer votre application dans c est  un modèle de lecture seule qui contient tous les éléments nécessaires pour exécuter une application


# adminer :
	Adminer est une application web open source, un gestionnaire de base de données qui permet aux administrateurs de bases de données de gérer leurs bases de données via une interface utilisateur conviviale et intuitive
* wget = est un outil puissant et polyvalent pour télécharger des fichiers à partir du Web de manière automatisée à l'aide de la ligne de commande.
* wget -O = pour zip des fils 
* apache2-foreground est la commande qui démarre le processus Apache HTTP Server à l'intérieur du conteneur Docker

# nginx :
est un serveur web 
* openssl : dans c est un logicielle open-source qui implémente des protocoles de sécurité tels que SSL  securite des communication entre les clients et serveurs et gestion de certificat  

pour start nginx = >  {/etc/nginx/sites-available#} ::  /etc/init.d/nginx start  

TLS v1.2 : Une version de TLS offrant une bonne sécurité et compatibilité, largement adoptée depuis 2008.
TLS v1.3 : La version la plus récente, offrant une sécurité renforcée, de meilleures performances, et une simplification du protocole.

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


scp -r <mon de folder>  mben-sal@10.13.100.51:<path dans virtual machine >


deux documentation pour lires 
- https://devopssec.fr/article/cest-quoi-un-conteneur#:~:text=Les%20namespaces%20(ou%20%22espaces%20de,soit%20au%20courant%20des%20limitations.

- https://harsh05.medium.com/understanding-namespaces-in-docker-0bbcf7697775 


* containerd == > runtime de conteneurs (il cree , lance, arrete et supprimer les conteneurs )

* namespace == > sont des mecanismes de separation des ressources systeme entre les deffirence conteneurs ,

* cgroupe == > c est mecanisme de controle et limiter les ressources systeme telle que le processe la memoire le stockage ...

0_ktslXG-epHCuKj-5.png 


scp -r push_inception mben-sal@10.13.100.73:/home/mben-sal/Bureau



=  >  point fiche de correction 

-  Examinez le Makefile , les scripts  (--link)

-  La pertinence de la structure des répertoires requise pour ce projet (un exemple est fourni dans le fichier PDF du sujet).

- La différence entre une image Docker utilisée avec Docker Compose et sans Docker Compose

- une explication simple de docker-network 

- Connectez-vous avec le compte administrateur pour accéder au tableau de bord d'administration. Le nom d'utilisateur Admin ne doit pas inclure « admin » ou « Admin » (par exemple, admin, administrateur, Admin-login, admin-123, etc.). 