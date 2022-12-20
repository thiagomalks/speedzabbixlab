#! /bin/bash

 apt-get update
 
##Instalação do Docker
#Adicionando repositório
 apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor --yes -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

apt-get update

#Instalando o Docker Engine
apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

service docker start
service docker enable

#Instalando Docker Compose
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

##Instalação do PostgreSQL e Zabbix
#Criando diretório do Zabbix e movendo docker compose
mkdir -p /home/zabbix && cp docker-compose.yml $_

#criando o diretório do PostgreSQL e movendo os arquivos
cp init-user-db.sh /tmp/init-user-db.sh

#iniciando os Containeres
docker-compose -f /home/zabbix/docker-compose.yml  up -d
