#!/bin/bash

# Script para continuar a configuração do XRDP no WSL após reinício (Parte 2)

INTERFACE="eth0"  # Substitua "eth0" pelo nome da sua interface
IP_ADDRESS=$(ip addr show "$INTERFACE" | grep "inet " | awk '{ print $2 }')

echo "Continuando a configuração do XRDP no Kali Linux (Parte 2)..."

# 1. Habilitando e iniciando o serviço XRDP com systemd
echo "Habilitando e iniciando o serviço XRDP..."
sudo systemctl enable xrdp
sudo systemctl start xrdp

# 2. Informando o usuário para acessar o Kali Linux via RDP
echo "Configuração completa! Agora você pode acessar o Kali Linux com XFCE usando o Remote Desktop do Windows."
echo "Use o comando 'mstsc' no Windows e conecte-se ao endereço $IP_ADDRESS."
echo -e "\e[1;32m"Instalação concluída com sucesso."\e[0m"
