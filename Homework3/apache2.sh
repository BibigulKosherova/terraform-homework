#!/bin/bash
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
echo "Hello, World! This is Homework3 on Amazon!" > /var/www/html/index.html