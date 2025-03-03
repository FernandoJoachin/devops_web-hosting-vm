# Usar la imagen oficial de NGINX como base
FROM nginx:alpine

# Copiar el sitio web al directorio de NGINX
COPY . /usr/share/nginx/html/

# Exponer el puerto 80
EXPOSE 80

# Comando por defecto para iniciar NGINX
CMD ["nginx", "-g", "daemon off;"]
