1) Créer un compte github
2) cloner : https://github.com/DavidV-training/exercices.git
3) créer une branche personnelle : 
    git checkout -b david-vergison
4) pour chaque exercice, créer un répertoire (pour l'instant J1-EXO1/J1-EXO2/J1-EXO3)
5) réaliser l'exercice dans un fichier exo.sh dans le répertoire correspondant
6) générer un commit et l'envoyer : 
    git add . && git commit -m"message de commit" && git push origin david-vergison
    (il faudra vous connecter à github, voir point 1)


-----------------------

EX 1 : Docker Registry
Description :
- Lancer un conteneur "docker registry" récupéré depuis le docker hub. (https://hub.docker.com/_/registry)
- Récupérer une image "hello-word", mettre dans notre registry puis l’instancier à partir de chez nous. (https://hub.docker.com/_/hello-world)
- Terminer en supprimant le container.

Objectif :
- lancer un premier conteneur
- expérimenter run/pull/tag/push/rm (cycle de vie)
- Briser l’isolation (réseau)

-----------------------

EX 2 : nginx
Description :
Lancer un conteneur nginx (https://hub.docker.com/_/nginx)
- en exposant le port 80 du conteneur sur le port 8080 de l’hôte.
- en exposant un répertoire de l’hôte contenant un fichier index.htm

Objectif :
- Briser l’isolation (réseau/disque)

-------------------

EX 3 : MariaDB + Adminer
Description :
- Lancer un conteneur MariaDB (https://hub.docker.com/_/mariadb)
- Lancer un conteneur Adminer en le paramétrant pour se connecter à la BDD. (https://hub.docker.com/_/adminer)

Objectif :
- Briser l’isolation (réseau/variables d'environnement)


https://docs.docker.com/engine/reference/commandline/run/

