#!/bin/bash

# Install node.js
sudo apt-get install python-software-properties -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
sudo nvm install 18.16.0
sudo nvm use 18.16.0
sudo apt-get install iptables -y

# Clean working folder
# sudo find /home/ubuntu/test -type f -delete

#echo "Installing & starting pm2"
sudo npm install pm2 -g