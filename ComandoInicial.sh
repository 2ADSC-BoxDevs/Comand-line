#!/bin/bash

echo "$(tput setaf 10)[Bot SPECULA assistant]:$(tput setaf 7) Olá Seja muito BEM-VINDO!"
sleep 2
echo "$(tput setaf 10)[Bot SPECULA assistant]:$(tput setaf 7) Vamos verificar se você já tem os itens necessarios para instalar a aplicação da specula"
sleep 2
echo "$(tput setaf 10)[Bot SPECULA assistant]:$(tput setaf 7) Verificando se já tem JAVA instalado na sua máquina..."
sleep 2
java --version
if [ $? -eq 0 ]
   then
   echo "$(tput setaf 10)[Bot SPECULA assistant]:$(tput setaf 7) Você já tem o JAVA instalado"
   sleep 2 
   else
   echo "$(tput setaf 10)[Bot SPECULA assistant]:$(tput setaf 7) Você não tem o JAVA instalado..."
   sleep 2 
   echo "$(tput setaf 10)[Bot SPECULA assistant]:$(tput setaf 7) Vamos instalar ele para você..."
   sudo apt-get install default-jre
   sleep 2
   echo "$(tput setaf 10)[Bot SPECULA assistant]:$(tput setaf 7) JAVA instalado!"
   fi
  sleep 2
  echo "$(tput setaf 10)[Bot SPECULA assistant]:$(tput setaf 7) Vamos instalar o DOCKER também..."
  sudo apt install docker.io
  sudo systemctl start docker
  sudo systemctl enable docker
  sleep 2
  echo "$(tput setaf 10)[Bot SPECULA assistant]:$(tput setaf 7) Vamos instalar a imagem do MYSQL..."
  sleep 2
  sudo docker build -t specula_bd .
  sudo docker run specula_bd


