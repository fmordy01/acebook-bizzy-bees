#!/bin/bash
cd /var/acebook
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
. ~/.nvm/nvm.sh
nvm install 18
npm install
sudo apt-get install gnupg curl
curl -fsSL https://pgp.mongodb.com/server-5.0.asc | \
   sudo gpg -o /usr/share/keyrings/mongodb-server-5.0.gpg \
   --dearmor
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-5.0.gpg ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo systemctl start --now mongod
