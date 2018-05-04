#!/bin/bash

echo "Installing Ansible..."
sudo yum update -y
sudo yum install python-pip git tmux -y
pip install ansible --user
wget https://raw.githubusercontent.com/ansible/ansible/devel/examples/ansible.cfg
mv ansible.cfg /home/vagrant/
export ANSIBLE_CONFIG=/home/vagrant/ansible.cfg
