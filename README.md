**README - Script Files**  📝

This repository contains three shell-script & Python files for automating the installation of various tools on your system. The scripts aim to simplify the installation process, allowing you to set up AWS CLI, Docker, HashiCorp-Vagrant and Termius software. Below is a brief description of each script: 🚀

## shell

| Script Name                  | Description                                               |
| ---------------------------- | --------------------------------------------------------- |
| `ansible-install.sh`         | A script for installation of Ansible on Ubuntu.           |
| `aws-cli.sh`                 | Install AWS-CLI for accessing AWS through the command line on Linux. |
| `docker-install.sh`          | Install Docker with Docker-compose on Linux.              |
| `get-dir-file-permission.sh` | A script to recursively store directory and file permissions and ownership details in a .txt file. |
| `termius-install.sh`         | SSH software for multi-server connection with SFTP & snippets. |
| `vagrant-install.sh`         | A script for installation of HashiCorp Vagrant on Ubuntu.  |


## python

| Script Name           | Description                                                  |
| ----------------------| ------------------------------------------------------------ |
| `reminder.py`         | A script that displays pop-up reminders for scheduled tasks. |
| `smtp-tester.py`      | A script to test AWS-SES Cred. or Any SMTP functionality on the local computer. |


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
- In case of any issues, consult the official documentation or respective websites for AWS CLI, Docker, and termius for further troubleshooting.

## Contributing

We welcome contributions from the community! If you have a script you'd like to add or improve, follow these basic steps:

1. Fork the main repository.
2. Create a new branch: `git checkout -b feature/new-script`.
3. Add your script to the repository.
4. Manage README.md file with script details table and formate. 
5. Commit your changes: `git commit -m "Add: Your new script"`.
6. Push to the branch: `git push origin feature/new-script`.
7. Create a pull request.

⚠️ **Warning:** ⚠️

Use these scripts at your own risk. While efforts have been made to ensure their correctness, the author shall not be responsible for any damages or issues arising from the use of these scripts. It is always recommended to review the scripts and understand their actions before running them on your system.
