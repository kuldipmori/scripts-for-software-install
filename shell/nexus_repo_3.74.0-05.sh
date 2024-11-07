#!/bin/bash

# Ensure the script is run as root or with sudo privileges
if [ "$(id -u)" -ne 0]; then
  echo "This script must be run as root or with sudo privileges."
  exit 1
fi

# Update the package list
apt update

# Install OpenJDK 11
apt install openjdk-11-jdk -y

# Verify Java installation
java -version

# Create the 'nexus' user if it doesn't exist
if ! id "nexus" &>/dev/null; then
  useradd -M -d /opt/nexus -s /bin/bash nexus
  echo "nexus ALL=(ALL) NOPASSWD: ALL" | sudo tee -a /etc/sudoers
fi

# Navigate to the /opt directory
cd /opt/ || { echo "Failed to switch to /opt directory. Exiting."; exit 1; }

# Download Nexus
wget https://download.sonatype.com/nexus/3/nexus-3.74.0-05-unix.tar.gz

# Extract Nexus archive and clean up
tar -xvzf nexus-3.74.0-05-unix.tar.gz && rm nexus-3.74.0-05-unix.tar.gz

# Rename extracted folder to 'nexus'
mv nexus-3.74.0-05 nexus

# Set ownership for Nexus directories
chown -R nexus:nexus /opt/nexus /opt/sonatype-work

# Update Nexus configuration to set the 'run_as_user' to 'nexus'
sed -i 's/#run_as_user=""/run_as_user="nexus"/' /opt/nexus/bin/nexus.rc

# Create the Nexus service file
bash -c 'cat > /etc/systemd/system/nexus.service <<EOF
[Unit]
Description=nexus service
After=network.target

[Service]
Type=forking
LimitNOFILE=65536
ExecStart=/opt/nexus/bin/nexus start
ExecStop=/opt/nexus/bin/nexus stop
User=nexus
Restart=on-abort
TimeoutSec=600

[Install]
WantedBy=multi-user.target
EOF'

# Reload systemd to apply the new service configuration
systemctl daemon-reload

# Enable Nexus service to start on boot
systemctl enable nexus.service

# Start Nexus service
systemctl start nexus.service

# Check if Nexus service is running
if systemctl is-active --quiet nexus.service; then
  echo "Nexus service is active and running."
else
  echo "Nexus service is not active. Checking its status..."
  systemctl status nexus.service | grep "Active:"
fi

echo "Nexus installation and service setup completed."
