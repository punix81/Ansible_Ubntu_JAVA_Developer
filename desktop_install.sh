#!/bin/bash

if [ -e ~/.gitconfig ]
then
    git fetch
    git pull
else
    # Git Configuration
    echo '###Congigure Git..'

    echo "Enter the Global Username for Git:";
    read GITUSER;
    git config --global user.name "${GITUSER}"

    echo "Enter the Global Email for Git:";
    read GITEMAIL;
    git config --global user.email "${GITEMAIL}"

    echo '###Git has been configured!'
    git config --list


    echo '###Update Project'
    git fetch
    git pull
fi

 echo "###Init to install your desktop"
 ansible-playbook playbook.yml --connection=local -become-method=sudo   --extra-vars "ansible_sudo_pass=secret"
