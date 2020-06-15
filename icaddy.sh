#!/usr/bin/env bash
#chmod 755 install-caddy.sh
#o o o o o o o o o o o

apt-get update
apt-get install curl -y
apt-get install net-tools

#caddy binary file
wget https://raw.githubusercontent.com/WhiteHat123456/install-caddy/master/caddy
chmod 755 caddy

#Caddyfile
mkdir /etc/caddy
touch /etc/caddy/Caddyfile
nano /etc/caddy/Caddyfile

#caddy.service
curl https://raw.githubusercontent.com/WhiteHat123456/install-caddy/master/caddy.service -o  caddy.service 
mv caddy.service  /etc/systemd/system/caddy.service


#
ulimit -n 8192
systemctl daemon-reload 
systemctl restart caddy 
systemctl status caddy 
systemctl enable caddy 

echo 'The installation process of caddy is complete'
echo 'please modify /etc/caddy/Caddyfile'
echo 'have fun'
