#!/bin/bash
# call docke script
bash ./scripts/docker-engine.sh

# Copy the setup script to /bin directory
sudo cp update /bin/update

# Make the setup script executable
sudo chmod +x /bin/update

# Clean up by removing the cloned repository directory
cd ..
rm -rf update-linux

# Main function
main() {
    install_script
}

# Execute the main function
main
