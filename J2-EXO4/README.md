## Exercice :

A) Ecrire le Dockerfile
- basé sur alpine (latest)
- qui installe (apk add) les paquets suivants : nginx, php7, php7-fpm,
  supervisord
- qui injecte dans le conteneur les fichiers suivants :
  - default.conf => /etc/nginx/conf.d/
  - nginx.conf => /etc/nginx/
  - index.php => /usr/local/nginx/html/
  - index.htm => /usr/local/nginx/html/
  - www.conf => /etc/php7/php-fpm.d/
  - supervisord.conf => /etc/supervisord.conf (fichier à écrire)
- execute les commandes suivantes :
  - chown nginx:nginx /usr/local/nginx/html/index.*
  - touch /tmp/php-fpm.sock && chown nginx:nginx /tmp/php-fpm.sock
- execute supervisord au lancement 

B) Ecrire le fichier supervisord.conf
C) Ecrire le fichier exo.sh avec les commandes de build et de run

## validation :
la commande suivante doit fonctionner :
```
curl localhost:8080/index.php
```
 
et renvoyer un "phpinfo()"" en réponse

## Attendus :
- un fichier Dockerfile
- un fichier supervisord.conf
- un fichier exo.sh avec la commande de build et la commande de run
