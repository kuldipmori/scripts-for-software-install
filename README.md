**README - Script Files**  📝

This repository contains three shell-script & Python files for automating the installation of various tools on your system. The scripts aim to simplify the installation process, allowing you to set up AWS CLI, Docker, HashiCorp-Vagran and Termius software. Below is a brief description of each script: 🚀

## shell

``aws-cli.sh``  
- Install AWS-CLI for access aws with command line on linux.

``docker-install.sh``  
- Install Docker with Docker-compose on linux.

``termius-install.sh``  
- SSH software for use multi-server connection with sftp & snippets.

``get-dir-file-permission.sh`` 
- A script to recursively store directory and file permissions and ownership details in a .txt file.

``vagrant-install.sh``
- A script for installation of HashiCorp Vagrant on Ubuntu.

## python

``reminder.py``
- A script that displays pop-up reminders for scheduled tasks.

``smtp-tester.py``
- A script to test AWS-SES Cred. or Any SMTP functionality local computer.

----------------------------------------------------------

**Usage Shell:** 🛠️

1. Clone this repository or download the individual shell script files to your system.

2. Make the script files executable: 

   ```
   chmod +x *.sh
   ```

3. Execute the desired script with administrative privileges (sudo) to perform the installation:

   To install AWS CLI:
     ```
     sudo ./*.sh
     ```
**Usage Python** 🛠️

1. Clone this repository or download the individual python script files to your system.

2. Make the script files executable:

   ```
   chmod +x *.py
   ```

3. Execute the desired Python script with administrative privileges (sudo) to perform the installation:

   To Run Python:
     ```
     sudo ./*.py
     ```

**Note:** 📌

- Ensure you have administrative privileges to run the scripts (using `sudo`).
- Review the scripts' content to understand what they do before executing them on your system.
- The scripts were designed for Ubuntu or Debian-based systems. Before running them on other distributions, verify compatibility and adjust the package manager commands if needed.
- In case of any issues, consult the official documentation or respective websites for AWS CLI, Docker, and Termius for further troubleshooting.

**Warning:** ⚠️

Use these scripts at your own risk. While efforts have been made to ensure their correctness, the author shall not be responsible for any damages or issues arising from the use of these scripts. It is always recommended to review the scripts and understand their actions before running them on your system.
