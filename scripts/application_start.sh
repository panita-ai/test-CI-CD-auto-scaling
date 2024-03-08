#!/bin/bash

# Stop all servers and start the server as a daemon
sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-ports 3000
sudo pm2 start /home/ubuntu/nodejs/app.js