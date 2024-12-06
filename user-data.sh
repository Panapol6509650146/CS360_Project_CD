#!/bin/bash

cd home/ubuntu

touch meawrage.txt
touch first.txt

sudo apt update
sudo apt install docker.io -y

sudo service docker start
sudo systemctl enable docker

sudo usermod -aG docker ubuntu
newgrp docker

sudo docker pull meawrage/petadopt_frontend
sudo docker run -d -p 3000:3000 --name cs360_frontend_container meawrage/petadopt_frontend:latest
