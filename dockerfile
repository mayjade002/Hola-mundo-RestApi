# Usa una imagen base de Node.js
FROM node:18

# Crea un directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copia el archivo package.json y package-lock.json
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto de los archivos de tu proyecto
COPY . .

# Expone el puerto 3000
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["node", "index.js"]
