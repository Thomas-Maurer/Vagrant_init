# Vagrant init

Init and build a vagrant for [Zurvives](https://github.com/Thomas-Maurer/Zurvives) project

## Requirements

You must create a `/www` folder in your directory before initiate VM. This folder will be sync with the vagrant `/var/www` folder 

## Install

This script install on your vagrant :

* Git
* Curl
* Rvm
* Ruby
* Rails
* Nodejs
* Npm
* Bower
* Mysql

## Mysql

**USER**: root

**PASSWORD** : root

**DATABASE** : zurvives_dev

## Issues know

Node & npm may not be installed correctly. In this case, do :

```
sudo apt-get purge nodejs npm
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get install -y nodejs
```

The last command line will install node and npm
