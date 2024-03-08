#!/bin/bash

# Install node.js
sudo apt-get install python-software-properties -y
sudo apt-get update
sudo apt-get install nodejs -y
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