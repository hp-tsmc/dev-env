#!/bin/bash

GOVER="go1.17.2.linux-amd64.tar.gz"

curl -s https://dl.google.com/go/${GOVER} -o ${GOVER}

sudo rm -rf /usr/local/go 
sudo tar -C /usr/local -xzf ${GOVER}

echo "Adding path to ~/.bashrc"
echo 'PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc

export PATH=$PATH:/usr/local/go/bin

export GOPATH=$HOME/go