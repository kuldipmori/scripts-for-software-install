#!/bin/bash

# Update the package lists
sudo apt-get update

# Install curl
sudo apt-get install -y curl

# Install Docker using the official script
curl -fsSL https://get.docker.com/ | sh

# Add the current user to the docker group
sudo usermod -aG docker $USER

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo "Docker and Docker Compose installation completed."
