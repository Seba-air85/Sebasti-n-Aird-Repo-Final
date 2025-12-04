#!/bin/bash
set -e

echo "[+] Configurando políticas del firewall..."
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 22/tcp
sudo ufw allow 8080/tcp
sudo ufw --force enable

echo "[+] Aplicando hardening al servidor SSH..."
sudo sed -i 's/^#PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config
sudo sed -i 's/^PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config
sudo service ssh restart 2>/dev/null || true



echo "[+] Ajustando permisos de seguridad..."
sudo chmod 600 /opt/webapp/docker-compose.yml
sudo chmod 700 /deploy/setup.sh
sudo chmod 700 /security/hardening.sh
sudo chmod 700 /maintenance/backup.sh

echo "[+] Hardening completado."
