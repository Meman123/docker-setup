#!/bin/bash
echo "🚀 Configurando entorno de Docker..."

# Instalar dependencias
sudo apt update && sudo apt install -y docker.io docker-compose git

# Clonar el repositorio
git clone https://github.com/tu-usuario/docker-setup.git ~/docker-setup
cd ~/docker-setup

# Crear los volúmenes necesarios
mkdir -p n8n_data ollama_data

# Iniciar los contenedores
docker-compose up -d

echo "✅ Configuración completada. Puedes acceder a n8n en http://localhost:5678"

