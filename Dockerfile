# Paso 1: Usar una imagen ligera de Nginx basada en Alpine Linux
FROM nginx:alpine

# Paso 2: Copiar todos los archivos de tu carpeta actual al directorio de Nginx en el contenedor
COPY . /usr/share/nginx/html

# Paso 3: Exponer el puerto 80 (el estándar para HTTP)
EXPOSE 80

# Paso 4: Iniciar Nginx automáticamente al arrancar el contenedor
CMD ["nginx", "-g", "daemon off;"]