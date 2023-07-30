#!/bin/bash
#jenkins install
sudo apt update
sudo apt install openjdk-11-jdk 
java -version 
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update -y
sudo apt install jenkins -y
sudo systemctl status jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins
