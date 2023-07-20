#!/bin/bash

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

# Configure AWS CLI with your AWS Access Key ID, Secret Access Key, and default region
#echo "Please enter your AWS Access Key ID: "
#read aws_access_key_id

# Prompt for AWS Secret Access Key without echoing the input
#stty -echo
#echo "Please enter your AWS Secret Access Key: "
#read aws_secret_access_key
#stty echo
#echo

#echo "Please enter your default AWS region (e.g., us-east-1): "
#read aws_default_region

#aws configure set aws_access_key_id "$aws_access_key_id"
#aws configure set aws_secret_access_key "$aws_secret_access_key"
#aws configure set default.region "$aws_default_region"

#echo "AWS CLI configuration completed."

# Verify the configuration by listing S3 buckets
# aws s3 ls
