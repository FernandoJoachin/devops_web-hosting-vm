# Detener NGINX y NGROK
echo "Deteniendo NGINX y NGROK..."
sudo systemctl stop nginx
pkill ngrok

# Actualizar el repositorio
echo "Actualizando el repositorio..."
cd /ruta/a/tu/repositorio
git pull origin main  # Cambia "main" por la rama que uses

# Iniciar NGINX
echo "Iniciando NGINX..."
sudo systemctl start nginx

# Generar URL de NGROK
echo "Iniciando NGROK..."
ngrok http 80 > /dev/null &

# Esperar a que NGROK genere la URL
sleep 5

# Obtener la URL pública de NGROK
NGROK_URL=$(curl -s localhost:4040/api/tunnels | jq -r '.tunnels[0].public_url')

# Finalizar
echo "Despliegue finalizado. Accede a tu sitio web en: $NGROK_URL"
