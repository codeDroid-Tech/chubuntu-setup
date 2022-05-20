#!/bin/sh

echo "Hello There!!!"
echo "Excited to set up your new server! Demn blyat be becoming rich, getting new servers everyday!"

echo "Updating packages!"
sudo apt update

echo "Installing nginx!"
sudo apt install nginx -y

echo "Adjusting your firewall rules!"
sudo ufw enable -y
sudo ufw app list
sudo ufw allow 'Nginx HTTP'
sudo ufw status

echo "Checking your web server"
sudo systemctl status nginx

echo "Installing Git!"
sudo apt install git -y

echo "Installing Node"
sudo apt install nodejs -y
node -v
sudo apt install npm -y
sudo npm install -g n
sudo n stable
npm -v

echo "Installing Yarn!"
npm install --global yarn
yarn --version

echo "Setup Done! Pencho!"

echo"Restart to start with the latest stable release of Node!"
