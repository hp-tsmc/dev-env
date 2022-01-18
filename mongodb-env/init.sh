#! /bin/bash

sudo apt install -y gconf-service gconf-service-backend gconf2-common libgconf-2-4

wget https://downloads.mongodb.com/compass/mongodb-compass_1.29.6_amd64.deb

wget https://fastdl.mongodb.org/tools/db/mongodb-database-tools-ubuntu2004-x86_64-100.5.1.deb

wget https://downloads.mongodb.com/compass/mongodb-mongosh_1.1.7_amd64.deb

sudo dpkg -i mongodb-compass_1.29.6_amd64.deb
sudo dpkg -i mongodb-database-tools-ubuntu2004-x86_64-100.5.1.deb
sudo dpkg -i mongodb-mongosh_1.1.7_amd64.deb