#!/bin/sh
#
# This follows the instructions in Hashicorp's "Install Nomad"
#  https://developer.hashicorp.com/nomad/docs/install
#

# Install required packages.
sudo apt-get update && \
  sudo apt-get install wget gpg coreutils

# Add the Hashicorp GPG key.
wget -O- https://apt.releases.hashicorp.com/gpg | \
  sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

# Add the official HashiCorp Linux repository.
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" \
| sudo tee /etc/apt/sources.list.d/hashicorp.list

# Update and install Nomad.
sudo apt-get update && sudo apt-get install nomad

