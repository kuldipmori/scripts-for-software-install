#!/bin/bash

# Check if Ansible is installed
if ansible --version &>/dev/null; then
    echo "Ansible is already installed."
else
    echo "Ansible is not installed. Installing..."
    # Add Ansible repository and install
    sudo apt-add-repository -y ppa:ansible/ansible
    sudo apt update
    sudo apt install -y ansible
fi

# Print Ansible version
ansible --version
