**README - Shell Script Files**  📝

This repository contains three shell script files for automating the installation of various tools on your system. The scripts aim to simplify the installation process, allowing you to set up AWS CLI, Docker, and Termius software with ease. Below is a brief description of each script: 🚀

1. **aws-cli.sh**  ⚙️

   Install AWS-CLI for access aws with command line on linux.

2. **docker-install.sh**  🐳

   Install Docker with Docker-compose on linux.

3. **termius-install.sh**  🌐

   SSH software for use multi-server connection with sftp & snippets.

**Usage:** 🛠️

1. Clone this repository or download the individual shell script files to your system.

2. Make the script files executable: 🔒

   ```bash
   chmod +x *.sh
   ```

3. Execute the desired script with administrative privileges (sudo) to perform the installation:

   - To install AWS CLI:
     ```
     sudo ./*.sh
     ```

**Note:** 📌

- Ensure you have administrative privileges to run the scripts (using `sudo`).
- Review the scripts' content to understand what they do before executing them on your system.
- The scripts were designed for Ubuntu or Debian-based systems. Before running them on other distributions, verify compatibility and adjust the package manager commands if needed.
- In case of any issues, consult the official documentation or respective websites for AWS CLI, Docker, and Termius for further troubleshooting.

**Warning:** ⚠️

Use these scripts at your own risk. While efforts have been made to ensure their correctness, the author shall not be responsible for any damages or issues arising from the use of these scripts. It is always recommended to review the scripts and understand their actions before running them on your system.
