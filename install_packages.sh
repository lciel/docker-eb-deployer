#!/bin/sh

# Install Packages
apt-get -y update
apt-get install -y -q software-properties-common
apt-add-repository -y ppa:brightbox/ruby-ng
apt-get -y update
apt-get install -y -q \
    git \
    ruby2.1

# Install eb-deployer
gem install specific_install
gem specific_install -l 'https://github.com/lciel/eb-deployer.git'

# Cleanup
apt-get clean
