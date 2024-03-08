mkdir /home/ubuntu/nodejs
sudo chown -R $USER /home/ubuntu/nodejs
cd /home/ubuntu/nodejs
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm use 18.16.0
npm install