#!/bin/bash

echo "Installing Ansible..."
sudo yum update -y
sudo yum install python-pip git tmux -y
#pip install ansible --user
sudo -u vagrant pip install ansible --user
sudo -u vagrant wget https://raw.githubusercontent.com/ansible/ansible/devel/examples/ansible.cfg
echo " roles_path    = /vagrant/ansible " >> ansible.cfg
export ANSIBLE_CONFIG=/home/vagrant/ansible.cfg
