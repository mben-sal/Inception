# Inception

![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white)
![WordPress](https://img.shields.io/badge/WordPress-21759B?style=flat-square&logo=wordpress&logoColor=white)
![MariaDB](https://img.shields.io/badge/MariaDB-003545?style=flat-square&logo=mariadb&logoColor=white)
![Nginx](https://img.shields.io/badge/Nginx-009639?style=flat-square&logo=nginx&logoColor=white)

## 📋 Description

Inception est un projet de l'École 42 qui consiste à créer une infrastructure complète en utilisant Docker. L'objectif est de mettre en place plusieurs services dans des conteneurs séparés et de les orchestrer avec Docker Compose.

## 🏗️ Architecture

Le projet implémente une architecture à 3 services principaux :

- **NGINX** : Serveur web avec SSL/TLS
- **WordPress** : CMS avec PHP-FPM
- **MariaDB** : Base de données

Chaque service fonctionne dans son propre conteneur Docker, basé sur l'avant-dernière version stable d'Alpine Linux ou Debian Buster.

## 🚀 Services

### NGINX
- Serveur web configuré avec SSL/TLS uniquement
- Reverse proxy vers WordPress
- Port 443 exposé

### WordPress
- Installation WordPress avec PHP-FPM
- Configuration via variables d'environnement
- Connexion à la base de données MariaDB

### MariaDB
- Base de données pour WordPress
- Configuration sécurisée
- Données persistantes via volumes


## 🔒 Sécurité

- Certificats SSL/TLS auto-signés
- Configuration sécurisée de MariaDB
- Isolation des services via conteneurs
- Variables d'environnement pour les données sensibles

## 📚 Ressources

- [Documentation Docker](https://docs.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- [NGINX Configuration](https://nginx.org/en/docs/)
- [WordPress Codex](https://codex.wordpress.org/)


## 📄 Licence

Ce projet est réalisé dans le cadre de la formation à l'École 42.
