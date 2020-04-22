# Construction d'un environnement de developpement pour php avec docker-compose

## Première partie : Dockerfile

Construire ./build-nginx/Dockerfile

Version nginx à utiliser : latest

ajouter le fichier "default.conf" à l'emplacement suivant :
/etc/nginx/conf.d/default.conf

## Deuxième partie : Docker Compose

Construire le fichier docker-compose.yaml nécessaire pour lancer les conteneurs décrits ci-dessous.
Les conteneurs partagerons un même réseau virtuel

### mariadb

Version à utiliser : 10.5

Variables d'environnement à déclarer :
(Déplacer les variables dans un fichier .env)
- MYSQL_ROOT_PASSWORD
- MYSQL_DATABASE
- MYSQL_USER
- MYSQL_PASSWORD

Utiliser le répertoire local ./data/ pour stocker les données

Documentation de l'image : https://hub.docker.com/_/mariadb

### adminer

Version à utiliser : latest

Adminer doit être accessible depuis le serveur hôte sur le port 8081

Documentation de l'image : https://hub.docker.com/_/adminer

### nginx

L'image utilisée doit être construire à partir du répertoire ./build-nginx/

Nginx doit être accessible depuis le serveur hôte sur le port 80

Le site web à exposer est dans le repertoire local ./site/

Documentation de l'image : https://hub.docker.com/_/nginx

Note : avec la configuration de "default.conf", nginx s'attend à ce que le conteneur php soit accessible sur le dns "fpm"

### fpm

Version à utiliser : php:7-fpm

Le site web à exposer est dans le repertoire local ./site/

Documentation de l'image : https://hub.docker.com/_/php

## Validation

En n'ayant modifié que les fichiers suivants :
- build-nginx/Dockerfile
- .env
- docker-compose.yaml

adminer doit être accessible sur localhost:8081 et permettre de se connecter à mariadb avec le compte root et le compte utilisateur défini par l'élève.

la page "index.php" doit être accessible sur localhost:8080 et présenter les informations de paramétrage de php.