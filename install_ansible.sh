#!/bin/bash

# Check if Ansible is installed
if ! command -v ansible &> /dev/null; then
    echo "Ansible is not installed. Installing..."

    # Update package list
    sudo apt update

    # Install Ansible
    sudo apt install -y ansible

    # Check if installation was successful
    if [ $? -eq 0 ]; then
        echo "Ansible installed successfully."
    else
        echo "Failed to install Ansible. Please check your internet connection and try again."
        exit 1
    fi
else
    echo "Ansible is already installed."
fi

# Display Ansible version
ansible --version
