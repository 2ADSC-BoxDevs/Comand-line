#!/bin/bash

#Verificando e instalando o Java
echo "Verificando versão do Java"
java --version
if [ $? -eq 0 ]
then echo \"O Java já está instalado\"
else echo \"O Java está não instalado\"
sudo apt install default-jdk -y
clear
echo \"JAVA instalado na versao 11\"
java --version
sleep 5
fi
echo \"Vamos iniciar instalação da specula\"
sleep 4
clear
sudo apt update && sudo apt upgrade -y
clear
git clone https://github.com/2ADSC-BoxDevs/aplicacao-java.git


sudo apt-get install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
sudo docker pull mysql:5.7
sudo docker build -t specula_im:2.0 .
sudo docker run -d -p 3306:3306 --name specula_historico -e MYSQL_ROOT_PASSWORD=urubu100  specula_im:2.0

sudo docker attach specula_historico

cd aplicacao-java
chmod 777 -R aplicacao-specula-1.0-SNAPSHOT-jar-with-dependencies.jar 
java -jar aplicacao-specula-1.0-SNAPSHOT-jar-with-dependencies.jar
clear
else echo "A instalação foi cancelada"
fi