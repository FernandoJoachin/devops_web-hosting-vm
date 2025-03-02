# Usar la imagen oficial de NGINX como base
FROM nginx:alpine

# Copiar la página web al directorio de NGINX
COPY index.html /usr/share/nginx/html/index.html

# Exponer el puerto 80
EXPOSE 80

# Comando por defecto para iniciar NGINX
CMD ["nginx", "-g", "daemon off;"]
