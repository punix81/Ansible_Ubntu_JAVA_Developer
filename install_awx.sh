#!/bin/bash
#
# Installs Ansible AWX for Centos 7
#
yum -y install epel-release yum-utils

yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

yum -y install libselinux-python python-wheel python-pip git docker-ce

systemctl start docker
systemctl enable docker

pip install ansible boto boto3 docker ansible-tower-cli

git clone --depth 50 https://github.com/ansible/awx.git ~/awx
cd ~/awx/installer/
ansible-playbook -i inventory install.yml
