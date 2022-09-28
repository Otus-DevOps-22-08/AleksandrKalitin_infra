#!/bin/sh
sudo killall apt apt-get
sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock
sudo rm /var/lib/dpkg/lock*
sudo dpkg --configure -a
apt-get update
apt-get upgrade
apt-get install -y ruby-full ruby-bundler build-essential
