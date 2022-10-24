#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt install docker.io
sudo systemctl start docker
sudo systemctl enable docker
sudo docker pull mysql:5.7
sudo docker run -d -p 3306:3306 --name ConteinerBD -e "MYSQL_DATABASE=Specula" -e
"MYSQL_ROOT_PASSWORD=urubu100" mysql:5.7