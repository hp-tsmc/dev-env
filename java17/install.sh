#!/bin/bash

sudo apt update
sudo apt install -y openjdk-17-jdk openjdk-17-jre maven
echo "JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64" >> ~/.bashrc
echo "Please restart terminal or run bash to enable JAVA_HOME"
