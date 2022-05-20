#!/bin/sh

# Reset
CLEAR='\033[0m'           # Text Reset

# Regular Colors
BLACK='\033[0;30m'        # Black
RED='\033[0;31m'          # Red
GREEN='\033[0;32m'        # Green
YELLOW='\033[0;33m'       # Yellow
BLUE='\033[0;34m'         # Blue
PURPLE='\033[0;35m'       # Purple
CYAN='\033[0;36m'         # Cyan
WHITE='\033[0;37m'        # White

echo "${YELLOW}Hello There!!!${CLEAR}"
echo "Excited to set up your new server! Demn blyat be becoming rich, getting new servers everyday!"

echo "${YELLOW}Updating packages!${CLEAR}"
sudo apt update

echo "${YELLOW}Installing nginx!${CLEAR}"
sudo apt install nginx

echo "${YELLOW}Adjusting your firewall rules!${CLEAR}${CLEAR}"
sudo ufw app list
sudo ufw allow 'Nginx HTTP'
sudo ufw status

echo "${YELLOW}Checking your web server${CLEAR}"
systemctl status nginx

echo "${YELLOW}Installing Node${CLEAR}"
sudo apt install nodejs
node -v
npm -v

echo "${YELLOW}Installing Yarn!${CLEAR}"
sudo npm install --global yarn
sudo yarn --version

echo "${CYAN}Setup Done ${CLEAR}"
