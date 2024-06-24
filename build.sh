#!/usr/bin/env bash
# Exit on error
set -o errexit

#Navega hacia la ruta correcta del manage.py
cd /opt/render/project/src/inventarios

# Instala en el servidor los paquetes que figuran en requirements
pip install -r requirements.txt

# Convierte los archivos estáticos (DRF usa diseño y navegación por defecto)
python manage.py collectstatic --no-input

# Aplica las migraciones de la base de datos
python manage.py migrate