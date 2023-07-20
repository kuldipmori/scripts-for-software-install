**README - Shell Script Files**  📝

This repository contains three shell script files for automating the installation of various tools on your system. The scripts aim to simplify the installation process, allowing you to set up AWS CLI, Docker, and Termius software with ease. Below is a brief description of each script: 🚀

1. **aws-cli.sh**  ⚙️

   This script facilitates the installation of the AWS Command Line Interface (CLI) on your system. The AWS CLI is a powerful tool for interacting with AWS services through the command line. The script installs the AWS CLI using the package manager and configures it with your AWS Access Key ID, Secret Access Key, and default region. 

2. **docker-install.sh**  🐳

   The `docker-install.sh` script automates the installation of Docker on your system. Docker is a widely-used platform that allows you to build, deploy, and manage containerized applications. The script fetches the official Docker installation script, executes it, adds your current user to the Docker group for non-root usage, and installs Docker Compose as well. 

3. **termius-install.sh**  🌐

   This script simplifies the installation of the Termius software, a powerful SSH client. Termius offers various features to manage SSH connections, making it an excellent tool for remote server management. The script downloads the Termius deb package, installs it using `dpkg`, and handles any missing dependencies with `apt-get`.

**Usage:** 🛠️

1. Clone this repository or download the individual shell script files to your system.

2. Make the script files executable: 🔒

   ```bash
   chmod +x aws-cli.sh docker-install.sh termius-install.sh
   ```

3. Execute the desired script with administrative privileges (sudo) to perform the installation:

   - To install AWS CLI:
     ```
     sudo ./aws-cli.sh
     ```

   - To install Docker and Docker Compose:
     ```
     sudo ./docker-install.sh
     ```

   - To install Termius software for SSH:
     ```
     sudo ./termius-install.sh
     ```

**Note:** 📌

- Ensure you have administrative privileges to run the scripts (using `sudo`).
- Review the scripts' content to understand what they do before executing them on your system.
- The scripts were designed for Ubuntu or Debian-based systems. Before running them on other distributions, verify compatibility and adjust the package manager commands if needed.
- In case of any issues, consult the official documentation or respective websites for AWS CLI, Docker, and Termius for further troubleshooting.

**Warning:** ⚠️

Use these scripts at your own risk. While efforts have been made to ensure their correctness, the author shall not be responsible for any damages or issues arising from the use of these scripts. It is always recommended to review the scripts and understand their actions before running them on your system.
