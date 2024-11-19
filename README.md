# Configuração do Ambiente Gráfico XFCE e XRDP no Kali Linux (WSL)

Este repositório contém scripts para instalar e configurar o ambiente gráfico XFCE e o acesso remoto XRDP no Kali Linux que está sendo executado no Windows Subsystem for Linux (WSL). 

## Descrição dos Scripts

- **setup_xfce_xrdp_part1.sh**: Este script realiza a instalação do XFCE, XRDP e habilita o Systemd no WSL. Ele atualiza o sistema, instala as dependências necessárias e configura o XFCE como o ambiente gráfico padrão.

- **setup_xfce_xrdp_part2.sh**: Este script continua a configuração do XRDP, habilitando e iniciando o serviço, além de fornecer instruções para acessar o Kali Linux via RDP.

## Pré-requisitos

- Windows 10 ou 11 com WSL habilitado.
- Distribuição Kali Linux instalada no WSL.

## Instruções de Uso

1. **Clone o repositório**:
   ```bash
   git clone https://github.com/clsribeiro/https---github.com-clsribeiro-Intall_XFCE_XRDP_WSL-WINDOWS.git
   cd seu_repositorio
