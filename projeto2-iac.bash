#!bin/bash

echo "============================"
echo "Atualizando servidor..."

apt-get update
apt-get upgrade -y

echo "Servidor atualizado..."
echo "============================"

echo "Instalando o apache..."

apt-get install apache2 -y

echo "Apache instalado..."
echo "============================"

echo "Instalando o unzip..."

apt-get install unzip -y

echo "Unzip instalado..."
echo "============================"

echo "Baixando e descompactando o arquivo"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Arquivo baixado e descompactado..."
echo "============================"

echo "Copiando arquivos para o diretório do Apache..."

cd linux-site-dio-main
cp -R * /var/www/html

echo "Arquivos copiados para o diretório do Apache..."
echo "============================"
