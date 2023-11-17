#!/bin/bash
cd /var/acebook
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
. ~/.nvm/nvm.sh
nvm install 18
npm install
wget -o /etc/yum.repos.d/mongodb-org-7.0.repo https://repo.mongodb.org/yum/amazon/mongodb-org.repo
sudo yum install -y mongodb-org
sudo systemctl start --now mongod
