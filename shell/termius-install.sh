#!/bin/bash

# Download the Termius deb package
wget https://www.termius.com/download/linux/Termius.deb -O /tmp/Termius.deb

# Install the package using dpkg
sudo dpkg -i /tmp/Termius.deb

# Install any missing dependencies
sudo apt-get install -f

# Remove the temporary deb package file
rm /tmp/Termius.deb

echo "Termius installation completed."
