# 🛡️ Proyecto Final – Automatización, Hardening y Contenerización en Linux  
**Autor:** Sebastián Aird  

---

# 1. Introducción

Este proyecto forma parte del Evaluación Final del curso *Programación y Administración de Linux*, y simula el rol de un Ingeniero de Infraestructura en un entorno DevSecOps.  
El objetivo es transformar un servidor Linux base en un entorno seguro, automatizado y capaz de ejecutar un microservicio web mediante contenedores.

El trabajo se estructura en tres módulos fundamentales:

- **Aprovisionamiento Automatizado** (setup.sh)  
- **Hardening del Sistema Operativo** (hardening.sh)  
- **Estrategia de Respaldo y Continuidad Operacional** (backup.sh)

Cada módulo se ejecuta únicamente mediante scripts Bash no interactivos, garantizando reproducibilidad y estandarización.

---

# 2. Estructura del Proyecto

NOMBRE-REPO-FINAL/
│
│-- README.md
│
│-- deploy/
│ │-- docker-compose.yml
│ │-- setup.sh
│
│-- security/
│ │-- hardening.sh
│
│-- maintenance/
│ │-- backup.sh
│
│-- evidence/
│ │-- ufw_status.png
│ │-- web_access.png
│ │-- ssh_config.png
│ │-- backup_result.png


# 3. Guía de Despliegue (Orden Obligatorio)

## 🟦 1) Clonar el repositorio

```bash
git clone <URL-DEL-REPO>
cd Sebastián-Aird-Repo-Final
