#!/bin/bash

# Stop all servers and start the server as a daemon
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm use 18.16.0
pm2 stop all
pm2 kill all
pm2 start /home/ubuntu/nodejs/app.js