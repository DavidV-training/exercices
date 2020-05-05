version: '3.1'

services:
  db:
    image: mariadb:10.5
    environment:
      - MYSQL_USER=valerie
      - MYSQL_PASSWORD=dspmdp
      - MYSQL_ROOT_PASSWORD=supermotdepasse
      - MYSQL_DATABASE=test
    volumes:
      - ./data:/var/lib/mysql
  front:
    image: adminer
    ports:
      - 8080:8080
