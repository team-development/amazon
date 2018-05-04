#!/bin/bash

echo "Installing Ansible..."
sudo yum update -y
sudo yum install python-pip git tmux -y
pip install ansible --user
