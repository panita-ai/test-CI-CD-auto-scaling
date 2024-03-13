#!/bin/bash

# Install node.js
sudo apt-get install python-software-properties -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 18.16.0
nvm use 18.16.0

#echo "Installing & starting pm2"
npm install pm2 -g
pm2 stop all
pm2 kill all

# Clean working folder
sudo chown -R $USER /home/ubuntu/nodejs
sudo find  /home/ubuntu/nodejs -type f -delete