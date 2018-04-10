# Ansible Ubuntu 17.10
Ansible roles to setup Ubuntu desktop 17.10. This playbook is focused on quickly deploying a "ready to use" dev machine.


## Requirements
- Git
- Ansible 2+ (automatically installed from [Ansible offical Documentation ](http://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html?#latest-releases-via-apt-ubuntu))


## Installation
First, you need to install Git and Ansible :
```
$ sudo apt-get update
$ sudo apt-get install software-properties-common
$ sudo apt-add-repository ppa:ansible/ansible
$ sudo apt-get update
$ sudo apt-get install ansible
```

Then you need to customize the playbook `all.yml` (or create a new one) to suit your needs. Every roles are disabled by default.

Run `ansible-playbook ansible-desktop.yml --ask-become-pass` and enter your sudo password to run the playbook

## Roles included

| Role                     | Description                                                                                                                                                                                                                                                                                                                           |
| ------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| | **General** |
| proxy                   |                                                                                                                                                         |
| angular-cli                   |                                                                                                                                                         |
| atom                   |                                                                                                                                                         |
| curl                   |                                                                                                                                                         |
| desktop-cleanup                   |                                                                                                                                                         |
| desktop-preferences                   |                                                                                                                                                         |
| docker                   |                                                                                                                                                         |
| intellij                   |                                                                                                                                                         |
| java                   |                                                                                                                                                         |
| kitematic                   |                                                                                                                                                         |
| maven                   |                                                                                                                                                         |
| nodejs                   |                                                                                                                                                         |
| proxy                   |                                                                                                                                                         |
| soapui                   |                                                                                                                                                         |
| sqlDeveloper                   |                                                                                                                                                         |
| tomcat                   |                                                                                                                                                         |
| wallpaper                   |                                                                                                                                                         |
| webpack                   |                                                                                                                                                         |

