#!/bin/bash

# Check if Vagrant is already installed
if [ -x "$(command -v vagrant)" ]; then
    echo "Vagrant is already installed."
    exit 0
fi

echo "Installing Vagrant on Ubuntu..."

# Update package list and upgrade existing packages
sudo apt update && sudo apt upgrade -y

# Install VirtualBox (if not already installed)
if ! [ -x "$(command -v virtualbox)" ]; then
    sudo apt install virtualbox -y
fi

# Download and install Vagrant from the official website
VAGRANT_URL="https://releases.hashicorp.com/vagrant/$(curl -s https://releases.hashicorp.com/vagrant/index.json | jq -r '.versions[].version' | sort -V | tail -n 1)/vagrant_$(curl -s https://releases.hashicorp.com/vagrant/index.json | jq -r '.versions[].version' | sort -V | tail -n 1)_linux_amd64.zip"
wget "$VAGRANT_URL" -O vagrant.zip
sudo unzip vagrant.zip -d /usr/local/bin/
rm vagrant.zip

# Verify Vagrant installation
if [ -x "$(command -v vagrant)" ]; then
    VAGRANT_VERSION=$(vagrant --version | awk '{print $2}')
    echo "Vagrant $VAGRANT_VERSION installed successfully."
else
    echo "Vagrant installation failed."
    exit 1
fi
