#!/usr/bin/env bash
# Exit on error
set -o errexit

# Instala en el servidor los paquetes que figuran en requirements
pip install -r requirements.txt

# Convierte los archivos estáticos (DRF usa diseño y navegación por defecto)
python manage.py collectstatic --no-input

# Aplica las migraciones de la base de datos
python manage.py migrate