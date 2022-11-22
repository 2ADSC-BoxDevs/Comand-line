#!/bin/bash


echo "$(tput setaf 10)[Bot SPECULA assistant]:$(tput setaf 7) Vamos verificar se você já tem os itens necessarios para instalar a aplicação da specula"
sleep 2
echo "$(tput setaf 10)[Bot SPECULA assistant]:$(tput setaf 7) Verificando se já tem JAVA instalado na sua máquina..."
sleep 2
java --version
sleep 2 
if [ $? -eq 0 ]
   then
   echo "$(tput setaf 10)[Bot SPECULA assistant]:$(tput setaf 7) Você já tem o JAVA instalado"
   sleep 2 
   else
   echo "$(tput setaf 10)[Bot SPECULA assistant]:$(tput setaf 7) Você não tem o JAVA instalado..."
   sleep 2 
   echo "$(tput setaf 10)[Bot SPECULA assistant]:$(tput setaf 7) Vamos instalar ele para você..."
   sudo apt-get install default-jre
   echo "$(tput setaf 10)[Bot SPECULA assistant]:$(tput setaf 7) JAVA instalado!"
   fi
sleep 2
echo "$(tput setaf 10)[Bot SPECULA assistant]:$(tput setaf 7) Verificando se já tem DOCKER instalado na sua máquina..."
docker --version
if [ $? -eq 0 ]  
  then
  echo "$(tput setaf 10)[Bot SPECULA assistant]:$(tput setaf 7) Você já tem DOCKER instalado na sua máquina..."
  sleep 2
  else
  echo "$(tput setaf 10)[Bot SPECULA assistant]:$(tput setaf 7) Você já tem DOCKER instalado na sua máquina..."
  sleep 2
  echo "$(tput setaf 10)[Bot SPECULA assistant]:$(tput setaf 7) Vamos instalar..."
  sudo apt install docker.io
  sudo systemctl start docker
  sudo systemctl enable docker
  sleep 2
  echo "$(tput setaf 10)[Bot SPECULA assistant]:$(tput setaf 7) Vamos instalar o MYSQL..."
  sudo docker pull mysql:5.7
  sudo docker run -d -p 3306:3306 --name Specula -e "MYSQL_DATABASE=specula" -e "MYSQL_ROOT_PASSWORD=urubu100" mysql:5.7
  fi


