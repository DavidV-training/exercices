docker stop mariadb > /dev/null 2>&1
docker rm mariadb > /dev/null 2>&1

docker stop adminer > /dev/null 2>&1
docker rm adminer > /dev/null 2>&1

docker run -d --name mariadb -e MYSQL_DATABASE=test -e MYSQL_USER=torra -e MYSQL_PASSWORD=pass -e MYSQL_ROOT_PASSWORD=superpass -p 3306:3306 mariadb:10.5

docker run -d --name adminer -p 8080:8080 --link mariadb:db adminer
