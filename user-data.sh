#!/bin/bash

sudo yum update -y
sudo yum install -y openssh-server
sudo systemctl enable sshd
sudo systemctl start sshd

touch success.txt
