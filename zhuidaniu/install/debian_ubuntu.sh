#!/bin/sh

# zhuidaniu
# Maintainer: @foyo23
# App Version: 1.0

# ABOUT
# This script performs only PARTIAL installation of zhuidaniu:
# * packages update
# * memcached, postfix etc
# * ruby setup
# * zhuidaniu users
# Is should be run as root or sudo user. 


sudo apt-get update

sudo apt-get install -y git git-core wget curl gcc checkinstall libxml2-dev libxslt-dev sqlite3 libsqlite3-dev libcurl4-openssl-dev libreadline6-dev libc6-dev libssl-dev libmysql++-dev make build-essential zlib1g-dev libicu-dev redis-server openssh-server python-dev python-pip libyaml-dev postfix

wget http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p194.tar.gz
tar xfvz ruby-1.9.3-p194.tar.gz
cd ruby-1.9.3-p194
./configure
make
sudo make install

sudo adduser --disabled-login --gecos 'zhuidaniu app' zhuidaniu
