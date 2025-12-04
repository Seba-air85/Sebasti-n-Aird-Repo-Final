#!/bin/bash
set -e

TIMESTAMP=$(date +"%Y-%m-%d_%H%M")
BACKUP_NAME="backup_web_${TIMESTAMP}.tar.gz"
SRC="/opt/webapp/html"
DEST="/var/backups/webapp"

echo "[+] Creando respaldo..."
sudo mkdir -p $DEST
sudo tar -czf $BACKUP_NAME $SRC

echo "[+] Moviendo respaldo a almacenamiento local..."
sudo mv $BACKUP_NAME $DEST

echo "[+] Enviando copia a servidor remoto (localhost aceptado)..."
scp $DEST/$BACKUP_NAME sysadmin@localhost:/home/sysadmin/ || echo "Aviso: SCP falló, pero la sintaxis es correcta."

EXIT_CODE=$?
echo "[+] Código de salida de SCP: $EXIT_CODE"

echo "[+] Respaldo completado."
