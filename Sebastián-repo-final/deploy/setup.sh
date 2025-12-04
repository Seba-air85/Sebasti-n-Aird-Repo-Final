#!/bin/bash
set -e

echo "[+] Actualizando repositorios..."
sudo apt update -y
sudo apt upgrade -y

echo "[+] Instalando dependencias requeridas..."
sudo apt install -y git curl ufw docker.io docker-compose

echo "[+] Creando estructura de directorios..."
sudo mkdir -p /opt/webapp/html

echo "[+] Descargando docker-compose.yml..."
sudo curl -o /opt/webapp/docker-compose.yml \
https://gist.githubusercontent.com/DarkestAbed/0c1cee748bb9e3b22f89efe1933bf125/raw/5801164c0a6e4df7d8ced00122c76895997127a2/docker-compose.yml

echo "[+] Creando archivo index.html..."
sudo bash -c 'echo "<h1>Servidor Seguro Propiedad de Sebastián Aird - Acceso Restringido</h1>" > /opt/webapp/html/index.html'

echo "[+] Creando usuario sysadmin..."
if id "sysadmin" &>/dev/null; then
    echo "Usuario sysadmin ya existe."
else
    sudo useradd -m -s /bin/bash sysadmin
    sudo usermod -aG docker sysadmin
fi

echo "[+] Listo. El servidor está aprovisionado."
