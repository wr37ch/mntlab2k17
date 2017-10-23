#!/bin/bash

echo 'AppServer initialization'
cd ~
yum -y install tomcat-admin-webapps.noarch tomcat-docs-webapp.noarch tomcat-javadoc.noarch tomcat-systemv.noarch tomcat-webapps.noarch
yum install tomcat


export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.151-1.b12.el7_4.x86_64/jre/bin/java
cp /vagrant/clusterjsp.war /usr/share/tomcat/webapps/
systemctl start tomcat
yum install unzip
yum -y install avahi avahi-autoipd avahi-compat-libdns_sd avahi-glib avahi-gobject avahi-tools nss-mdns nss-mdns.i?86
systemctl start avahi-daemon
wget https://releases.hashicorp.com/serf/0.8.1/serf_0.8.1_linux_amd64.zip
unzip serf_0.8.1_linux_amd64.zip -d /usr/local/bin
systemctl status tomcat
echo "-----------------------------------------------------------------------------------------"
systemctl status avahi-daemon