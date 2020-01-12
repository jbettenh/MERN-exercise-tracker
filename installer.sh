#!/bin/sh
# installer.sh will install the necessary packages

main () {
  rpi
  config_env
  install_be
  install_fe
  
}

rpi() {

# Version of Raspbian
apt-get install lsb_release
lsb_release -a
 
# Run Update & Upgrade
echo "\n"
echo "  Running apt-get update & upgrade \n"

#apt-get update && apt-get upgrade -y
printf "  Current version of npm: $( npm -v)\n"
npm install -g npm
printf  "  New version of npm: $( npm -v)\n"
}

config_env() {
printf "  Configuring Environment.........."
# read -p $'\e[33mWhat\'s your MongoDB credentials? \e[39m' -r mongodb_connstr
#git pull origin master
}

install_be() {
echo "================================================="
printf "  Deploying Backend packages.........."
echo "  Installing express.js..."
npm install express
echo "\n"
echo "\n"

echo "  Installing cors..."
npm install cors
echo "\n"
echo "\n"

echo "  Installing mongoose..."
npm install mongoose
echo "\n"
echo "\n"

echo "  Installing dotenv..."
npm install dotenv

echo "\n"
echo "\n"

echo "  Installing nodemon..."
npm install nodemon
echo "\n"
echo "\n"
echo "\n"
}

install_fe() {
echo "================================================="
printf "  Deploying Frontend package.........."
}

main