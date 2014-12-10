#!/bin/sh

# Install Packages
add-apt-repository -y ppa:brightbox/ruby-ng
apt-get -y update
apt-get install -y -q \
    apt-get -y install ruby2.1

# Install eb-deployer
gem install specific_install
gem specific_install -l 'https://github.com/lciel/eb-deployer.git'

# Cleanup
apt-get clean
