#!/usr/bin/env bash

# Start and update vagrant
echo -e "\n--- Install Vagrant ---\n"
sudo apt-get update
sudo apt-get install -y git git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

# Install RVM
echo -e "\n--- Install RVM  ---\n"
su - vagrant -c 'curl -sSL https://get.rvm.io | bash -s'
su - vagrant -c 'source ~/.rvm/scripts/rvm'
su - vagrant -c 'echo "source ~/.rvm/scripts/rvm" >> ~/.bashrc'

# Install Ruby
echo -e "\n--- Install Ruby latest version using RVM ---\n"
su - vagrant -c 'rvm install ruby'

# Install Rails 
echo -e "\n--- Install Rails ---\n"
su - vagrant -c "gem install rails --no-ri --no-rdoc"

# Install Node 
echo -e "\n--- Install nodejs and npm ---\n"
sudo apt-get install -y nodejs
sudo apt-get install -y npm

echo -e "\n--- Install dependencies and prevent proxy issues ---\n"
npm config set registry http://registry.npmjs.org/
sudo npm cache clean -f
sudo npm install -g n
sudo n stable
sudo npm install bower -g

echo -e "\n--- Install MySQL ---\n"
apt-get install debconf-utils -y > /dev/null
debconf-set-selections <<< "mysql-server mysql-server/root_password password root"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password root"
sudo apt-get install -y mysql-server mysql-client libmysqlclient-dev > /dev/null

echo -e "\n--- Create Database ---\n"
sudo mysql -h localhost -u root -proot -e "CREATE DATABASE zurvives_dev;"