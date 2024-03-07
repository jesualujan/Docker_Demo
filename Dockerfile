# CREAR UNA IMAGEN DE NODEJS A PARTIR DE UN : Dockerfile 
# Este Dockerfile se utiliza para construir una imagen de Docker
# que ejecutará una aplicación de NodeJS.

# Establece la imagen base para la construcción de la imagen de Docker.
# En este caso, está utilizando la imagen oficial de Node.js versión 15 como base.
FROM node:15

# Establece el directorio de trabajo dentro del contenedor como /app todo lo que se copie 
# en la imagen de Docker se almacenará en este directorio.
WORKDIR /app

# Copia el archivo package.json y package-lock.json a la imagen de Docker.
COPY package.json ./

# Instala las dependencias de la aplicación Node.js en el contenedor.
# Utiliza el archivo package.json copiado previamente para determinar que paquetes instalar
RUN npm install

# Copia todos los archivos y directorios desde el directorio de construcción local 
# al directorio de trabajo en el contenedor.
# Esto va a incluir la aplicación de Node.js y todos los archivos necesarios para ejecutarla (nuestra aplicación)
COPY . ./

# EXPONER EL PUERTO DE NUESTRA APLICACIÓN
# EXPOSE 3000
ENV PORT 3000
EXPOSE $PORT
# Establece el comando predeterminado a ejecutar cuando se inicia el contenedor.
#CMD ["node" , "index.js"]
CMD ["npm", "run", "dev"]