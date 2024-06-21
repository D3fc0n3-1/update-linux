#!/bin/bash

# URL of your GitHub repository containing the setup.sh script
repo_url="https://github.com/KennethOldenburg/update-linux"

# Name of the setup script
script_name="upgrade"

# Install the setup script
install_script() {
    # Clone the repository
    git clone $repo_url

    # Change into the cloned repository directory
    cd update-linux

    # Copy the setup script to /bin directory
    sudo cp $script_name /bin/update

    # Make the setup script executable
    sudo chmod +x /bin/update

    # Clean up by removing the cloned repository directory
    cd ..
    rm -rf update-linux
}

# Main function
main() {
    install_script
}

# Execute the main function
main
