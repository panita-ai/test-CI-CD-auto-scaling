#!/bin/bash

# Install node.js
sudo apt-get install python-software-properties -y
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get update
sudo apt install nodejs -y
sudo apt install npm -y
sudo apt-get install iptables -y

# Install nodemon
# sudo npm install nodemon -g

# Install forever module 
# https://www.npmjs.com/package/forever
sudo npm install forever -g

# Clean working folder
# sudo find /home/ubuntu/test -type f -delete

#echo "Installing & starting pm2"
sudo npm install pm2 -g