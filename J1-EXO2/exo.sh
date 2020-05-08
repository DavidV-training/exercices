#!/bin/bash

echo Suppression des containers nginx s\ils sont présents

sudo docker stop nginx && sudo docker rm nginx 


echo Création d\'un fichier index.html 

mkdir ./src/
touch ./src/index.htm


echo Ecriture dans index.htm

echo "test nginx" >> src/index.htm


echo Lancement de l\'image nginx

sudo docker run -d -p 8080:80 -v ./src/:/usr/share/nginx/html:ro --name nginx-test nginx


echo Installation de curl si pas déjà faite

sudo apt get install curl


echo Vérification sur la page pointée par l\'image




