#!/bin/sh
# install_dependencies.sh will install the necessary packages

# Version of Raspbian
apt-get install lsb_release
lsb_release -a

  
# Run Update & Upgrade
echo "\n"
echo "  Running apt-get update & upgrade \n"

#apt-get update && apt-get upgrade -y

echo "\n"
echo "\n"
echo "\n"
printf "  Current version of npm: $( npm -v)\n"
npm install -g npm
printf  "  New version of npm: $( npm -v)\n"
echo "\n"
echo "\n"


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


printf "  Deploying Frontend package.........."

printf "  Configuring Environment.........."
echo
read -p $'\e[33mWhat\'s your MongoDB credentials? \e[39m' -r mongodb_connstr

