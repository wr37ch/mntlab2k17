#!/bin/bash
echo 'Nginx installation'
sudo yum -y install epel-release
sudo yum -y install nginx
sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl status nginx
rm /etc/nginx/nginx.conf
cat /vagrant/nginx.conf >> /etc/nginx/nginx.conf
sudo systemctl restart nginx
yum -y install unzip
yum -y install avahi avahi-autoipd avahi-compat-libdns_sd avahi-glib avahi-gobject avahi-tools nss-mdns nss-mdns.i?86
systemctl start avahi-daemon
wget https://releases.hashicorp.com/serf/0.8.1/serf_0.8.1_linux_amd64.zip
unzip serf_0.8.1_linux_amd64.zip -d /usr/local/bin
echo "-----------------------------------------------------------------------------------------"
systemctl status avahi-daemon

