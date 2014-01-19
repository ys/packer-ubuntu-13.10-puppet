#!/bin/bash

set -e
# Updating and Upgrading dependencies
sudo wget http://apt.puppetlabs.com/puppetlabs-release-saucy.deb
sudo dpkg -i puppetlabs-release-saucy.deb
sudo apt-get update -y -qq > /dev/null
sudo apt-get upgrade -y -qq > /dev/null
sudo apt-get -y install puppet
sudo echo 'vagrant ALL=NOPASSWD:ALL' > /tmp/vagrant
sudo chmod 0440 /tmp/vagrant
sudo mv /tmp/vagrant /etc/sudoers.d/
