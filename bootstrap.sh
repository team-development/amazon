#!/bin/bash

echo "Installing Ansible..."
sudo yum update -y
sudo yum install python-pip -y
pip install ansible --user
