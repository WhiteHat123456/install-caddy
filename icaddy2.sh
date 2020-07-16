#!/usr/bin/env bash
#chmod 755 install-caddy2.sh
#o o o o o o o o o o o

apt-get update
apt-get install curl -y
apt-get install net-tools

#caddy binary file
wget https://iaddy.ipip.pw/66666caddy/caddy
chmod 755 caddy
mv ./caddy /usr/local/bin

#Caddyfile
mkdir /etc/caddy
touch /etc/caddy/Caddyfile


#caddy.service
curl https://iaddy.ipip.pw/66666caddy/caddy.service -o  caddy.service 
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
