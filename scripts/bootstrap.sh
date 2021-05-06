#!/bin/bash
hostnamectl set-hostname apache-terraform
apt-get update
apt-get install apache2 -y
systemctl start apache2
systemctl enable apache2
echo -e "<h1>Deployed by Terraform</h1>\nYou're on host: $(hostname)" > /var/www/html/index.html