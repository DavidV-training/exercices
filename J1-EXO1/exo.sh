#!/bin/bash

echo Lancer le conteneur \"docker registry\" récupéré depuis le docker hub

sudo docker run -d -p 5000:5000 --restart always --name registry registry:2


echo Récupérer une image \"hello-world\"

sudo docker pull hello-world


echo Tagger l\'image récupérée pour mieux la réutiliser par la suite

sudo docker tag hello-world:latest localhost:5000/rd/hello-world:1.0


echo Mettre l\'image récupérée dans le registry instancié

sudo docker push localhost:5000/rd/hello-world:1.0


echo Puis enfin, nettoyer Docker en supprimant les containers non utilisés

sudo docker stop registry
sudo docker rm registry
