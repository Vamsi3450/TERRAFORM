#! /bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo service httpd start  
sudo systemctl enable httpd
echo "<img src="https://wallpaperaccess.com/full/9810.jpg"></img>"  /var/www/html/index.html