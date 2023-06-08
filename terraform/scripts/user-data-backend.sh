  #!/bin/bash
apt-get update -y
apt-get upgrade -y
apt-get install -y apache2

# Instalar Node.js como superusuario
sudo apt update
sudo apt install -y nodejs
sudo apt install -y npm

# Verificar la versión de Node.js instalada
node -v


sudo npm cache clean -f
sudo npm install -g n
sudo n stable
sudo n latest

# Clonar el repositorio
git clone https://github.com/Endercarias/api-is.git


# Instalar dependencias
sudo npm install

# Instalar Express
#sudo npm install express

# sudo npm install -g nodemon

#sudo npm uninstall bcrypt
#sudo npm install bcryptjs
#sudo npm install bcrypt

# Iniciar la aplicación
sudo npm start