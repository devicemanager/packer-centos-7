#!/bin/bash -eux

#Dev Tools Installation
sudo yum update -y
sudo yum install -y curl
sudo yum install -y wget
sudo yum install -y git-all
sudo yum groupinstall -y "Development Tools"
sudo yum install -y tcpdump

#JAVA8 Installation
cd /usr
sudo mkdir java
cd java/
sudo wget --no-check-certificate --no-cookies --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u121-b13/e9e7ea248e2c4826b92b3f075a80e441/jdk-8u121-linux-x64.tar.gz"
sudo tar xzvf jdk-8u121-linux-x64.tar.gz
rm jdk-8u121-linux-x64.tar.gz
sudo ln -s jdk1.8.0_121/ latest
sudo ln -s latest/ default
sudo alternatives --install /usr/bin/java java /usr/java/jdk1.8.0_121/bin/java 4
echo export JAVA_HOME=/usr/java/default >> ~/.bashrc
echo export JRE_HOME=/usr/java/jdk1.8.0_121/jre >> ~/.bashrc
echo export PATH=$PATH:/usr/java/jdk1.8.0_121/bin:/opt/jdk1.8.0_121/jre/bin >> ~/.bashrc


#MAVEN Installation
cd /opt
sudo wget http://ftp.itu.edu.tr/Mirror/Apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
sudo tar xzvf apache-maven-3.3.9-bin.tar.gz
rm apache-maven-3.3.9-bin.tar.gz
echo export PATH=/opt/apache-maven-3.3.9/bin:$PATH >> ~/.bashrc
echo export M2_HOME=/opt/apache-maven-3.3.9/ >> ~/.bashrc


#GNOME-Desktop Installation
#sudo yum -y groupinstall "GNOME Desktop"


#Eclipse C/C++ Installation
#cd /home/vagrant
#wget http://ftp.linux.org.tr/eclipse//technology/epp/downloads/release/neon/2/eclipse-cpp-neon-2-linux-gtk-x86_64.tar.gz
#tar xzvf eclipse*.tar.gz
#rm -f eclipse*.tar.gz


#Spring Installation
#wget http://download.springsource.com/release/STS/3.8.3.RELEASE/dist/e4.6/spring-tool-suite-3.8.3.RELEASE-e4.6.2-linux-gtk-x86_64.tar.gz
#tar xzvf spring*.tar.gz
#rm -f spring*.tar.gz


#Zero out the rest of the free space using dd, then delete the written file
#dd if=/dev/zero of=/EMPTY bs-1M
#rm -rf /EMPTY


#Add 'sync' so Packer doesn't quit too early, before the large file is deleted
#sync
