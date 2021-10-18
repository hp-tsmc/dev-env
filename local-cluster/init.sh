#!/bin/bash

echo "Install Kubernetes for test"
sudo snap install microk8s --classic

echo "Create command shortcut"
echo "alias k='sudo microk8s.kubectl'" >> ~/.bashrc

echo "Wait 1"
sleep 1

echo "Starting Kubernetes"
sudo microk8s.start

echo "Wait 1"
sleep 1

echo "generating credential"
mkdir -p ~/.kube
sudo microk8s config > ~/.kube/config

echo "Enabling necessary plugins"
sudo microk8s enable dns ingress storage

