#!/bin/bash

//Iniciando

sudo apt update && sudo apt upgrade -y
sudo apt install docker.io
sudo systemctl start docker
sudo systemctl enable docker

//Puxando imagem do mysql na VM

sudo docker pull mysql:5.7
sudo docker run -d -p 3306:3306 --name Specula -e "MYSQL_DATABASE=specula" -e "MYSQL_ROOT_PASSWORD=urubu100" mysql:5.7

// aṕos isso
// para verificar se o docker está rodando
// sudo Docker ps
// para entrar no terminal do Container
// sudo docker exec -it idDoContainer bash
// para entrar no mysql do docker e lá criar o database, table e inserts.
// mysql -u root -p

