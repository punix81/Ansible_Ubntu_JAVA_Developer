#!/bin/bash
# ansible-playbook -i hosts playbook.yml -c ssh --ask-pass -u dev -become-method=sudo   --extra-vars "ansible_sudo_pass=secret"
# ansible-playbook playbook.yml --connection=local --extra-vars "ansible_sudo_pass=secret"

 echo "Install Jeap-Ansible"

 ansible-playbook playbook.yml --connection=local -become-method=sudo   --extra-vars "ansible_sudo_pass=secret"
