#! /bin/bash
sudo apt-get -y update
sudo apt-get install -y npm
sudo npm install -y n -g
sudo n 8.10.0 -y
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
echo "<h1>Deployed via Terraform</h1>" | sudo tee /var/www/html/index.html
sudo apt-get install -y git
