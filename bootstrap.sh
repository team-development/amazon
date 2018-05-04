#!/bin/bash

echo "Installing Ansible..."
sudo yum update -y
sudo yum install python-pip git tmux -y
#pip install ansible --user
sudo -u vagrant pip install ansible --user
sudo pip install ansible awscli --user
sudo -u vagrant wget https://raw.githubusercontent.com/ansible/ansible/devel/examples/ansible.cfg
echo "roles_path    = /vagrant/ansible" >> /home/vagrant/ansible.cfg
export ANSIBLE_CONFIG=/home/vagrant/ansible.cfg
sudo -u vagrant /home/vagrant/.local/bin/ansible-playbook /vagrant/ansible/dev.yml
#git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sudo -u vagrant chmod u+x /home/vagrant/.vim_runtime/install_awesome_vimrc.sh
sudo -u vagrant sh ~/.vim_runtime/install_awesome_vimrc.sh
