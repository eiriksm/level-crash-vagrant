#!/usr/bin/env bash

apt-get update

# Make it possible to add repository.
apt-get install python-software-properties -y

# Add redis ppa
add-apt-repository ppa:rwky/redis -y

# Add node.js ppa
add-apt-repository ppa:chris-lea/node.js -y

# Refresh stuff.
apt-get update

# Install some stuff.
apt-get install build-essential g++ vim git curl nodejs redis-server fontconfig -y

# Install phantomjs (for front-end testing)
cd /usr/local/share/
wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.7-linux-x86_64.tar.bz2
tar xjf phantomjs-1.9.7-linux-x86_64.tar.bz2
mv phantomjs-1.9.7-linux-x86_64 phantomjs
ln -s `pwd`/phantomjs/bin/phantomjs /usr/local/bin
