#!/bin/bash -eux
#Install prerequisites
yum install -y wget
# Install vagrant key
echo 'Install vagrant SSH key'
mkdir -pm 700 /home/vagrant/.ssh
wget --no-check-certificate https://raw.githubusercontent.com/hashicorp/vagrant/master/keys/vagrant.pub -O /home/vagrant/.ssh/authorized_keys
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh
adduser rgeer -G wheel
wget --no-check-certificate https://raw.githubusercontent.com/devicemanager/packer-centos-7/master/rgeer.pub -O /home/rgeer/.ssh/authorized_keys
