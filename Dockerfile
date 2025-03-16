# Utilizar una imagen base de Node
FROM node:16

# Crear y establecer el directorio de la aplicación
WORKDIR /app

# Copiar los archivos de dependencia
COPY package*.json ./

# Instalar las dependencias
RUN npm install

# Copiar el código restante al contenedor
COPY . .

# Exponer el puerto de la aplicación
EXPOSE 3000

# Comando para arrancar la aplicación
CMD ["node", "index.js"]
