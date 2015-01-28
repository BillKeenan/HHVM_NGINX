wget -O - http://dl.hhvm.com/conf/hhvm.gpg.key | sudo apt-key add -
echo deb http://dl.hhvm.com/ubuntu trusty main | sudo tee /etc/apt/sources.list.d/hhvm.list
sudo apt-get update
sudo apt-get install -y hhvm 

/etc/init.d/hhvm restart

sudo apt-get install -y nginx

sudo rm /etc/nginx/sites-enabled/default
sudo cp /sync/nginx.conf /etc/nginx/sites-enabled/default
sudo service nginx restart