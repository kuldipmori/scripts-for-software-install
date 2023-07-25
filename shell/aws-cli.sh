#!/bin/bash

clear 
# Update the package lists
sudo apt update

# Install the AWS CLI using the package manager
sudo apt install -y awscli

# Check if installation was successful
if [ $? -eq 0 ]; then
    echo "AWS CLI installation completed successfully."
else
    echo "AWS CLI installation failed."
    exit 1
fi
