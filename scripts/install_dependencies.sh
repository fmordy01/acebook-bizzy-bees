#!/bin/bash
cd /var/acebook
nvm install 18
npm install
sudo systemctl start --now mongod
