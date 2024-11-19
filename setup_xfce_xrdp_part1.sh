#!/bin/bash

# Script para instalar XFCE e XRDP e habilitar o Systemd no WSL (Parte 1)

echo "Iniciando a instalação do XFCE e XRDP no Kali Linux (Parte 1)..."

# 1. Atualizando o sistema
echo -e "\e[1;33m"Atualizando o sistema..."\e[0m"
sudo apt update && sudo apt upgrade -y

# 2. Instalando o XFCE4
echo -e "\e[1;33mInstalando o ambiente gráfico XFCE4...\e[0m"
sudo apt install -y xfce4 xfce4-goodies

# 3. Instalando dependencias recomendadas
echo -e "\e[1;33mInstalando dependências recomendadas.\e[0m"
sudo apt install -y gigolo xfce4-indicator-plugin xfce4-mpc-plugin mpd

# 4. Instalando o XRDP
echo -e "\e[1;33m"Instalando o XRDP"\e[0m"
sudo apt install -y xrdp

# 5. Configurando o XFCE4 como ambiente padrão para o XRDP
echo -e "\e[1;33m"Configurando o XFCE4 como ambiente padrão para o XRDP..."\e[0m"
echo "startxfce4" | sudo tee -a /etc/skel/.xsession
echo "startxfce4" | sudo tee -a ~/.xsession

# 6. Habilitando o Systemd no WSL
echo -e "\e[1;33m"Habilitando o Systemd no WSL..."\e[0m"
sudo tee /etc/wsl.conf > /dev/null <<EOL
[boot]
systemd=true
EOL

# 7. Instruções para reiniciar o WSL
echo -e "\e[1;32m"Configurações da Parte 1 concluídas."\e[0m"
echo -e "\e[1;31mÉ necessário reiniciar o WSL para habilitar o Systemd.\e[0m"
echo -e "Por favor, execute o comando \e[1;31m'wsl --shutdown'\e[0m no PowerShell ou CMD do Windows."

echo "Após reiniciar o WSL, execute o script 'setup_xfce_xrdp_part2.sh' para continuar a configuração."
echo "Script Parte 1 finalizado com sucesso!"
