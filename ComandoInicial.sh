#!/bin/bash

#Verificando e instalando o Java
echo "Verificando versão do Java"
java --version
if [ $? -eq 0 ]
<<<<<<< HEAD
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
wget https://github.com/2ADSC-BoxDevs/aplicacao-java.git
sudo apt-get install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
sudo docker pull mysql:5.7
sudo docker build -t specula_img:1.0 .
sudo docker run -d -p 3306:3306 --name specula specula_img:1.0
clear
else echo "A instalação foi cancelada"
fi
=======
   then
   echo "$(tput setaf 10)[Bot SPECULA assistant]:$(tput setaf 7) Você já tem o JAVA instalado"
   sleep 2 
   else
   echo "$(tput setaf 10)[Bot SPECULA assistant]:$(tput setaf 7) Você não tem o JAVA instalado..."
   sleep 2 
   echo "$(tput setaf 10)[Bot SPECULA assistant]:$(tput setaf 7) Vamos instalar ele para você..."
   sudo docker build -t specula-java -f ./docker_java/Dockerfile  .

   sudo docker run -it --rm --name specula-java specula

   

   sleep 2
   echo "$(tput setaf 10)[Bot SPECULA assistant]:$(tput setaf 7) JAVA instalado!"
   fi
   sleep 2

  echo "$(tput setaf 10)[Bot SPECULA assistant]:$(tput setaf 7) Clonando repositório!"
  git clone https://github.com/2ADSC-BoxDevs/aplicacao-java.git

  echo "$(tput setaf 10)[Bot SPECULA assistant]:$(tput setaf 7) Vamos instalar o DOCKER também..."
   sudo apt install docker.io
   sudo systemctl start docker
   sudo systemctl enable docker
   sleep 2
  echo "$(tput setaf 10)[Bot SPECULA assistant]:$(tput setaf 7) Vamos instalar a imagem do MYSQL..."
   sleep 2
sudo docker network create "Specula"
sudo docker build -t  specula -f ./DockerfileBD .
sudo docker run --network "specula" -d -p 3306:3306 --name Specula -e MYSQL_ROOT_PASSWORD=urubu100 -e MYSQL_DATABASE=specula specula
echo "$(tput setaf 10)[Bot SPECULA assistant]:$(tput setaf 7) Rodando aplicação"
cd..
cd aplicacao-java
chmod 777 -R aplicacao-specula-1.0-SNAPSHOT-jar-with-dependencies.jar 
java -jar aplicacao-specula-1.0-SNAPSHOT-jar-with-dependencies.jar



>>>>>>> 6033b5d1d050b4ae0cae2786aa9371f2bf7b2f0e
