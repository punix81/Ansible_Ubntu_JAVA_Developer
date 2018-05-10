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

    echo "###Set git configuration";

    git config --global url.https://.insteadOf git://

    git config --global http.proxy http://proxy-bvcol.admin.ch:8080

    git config --global http.sslVerify false

    git config --global https.proxy http://proxy-bvcol.admin.ch:8080

    git config --global http.http://stash.eap.bit.admin.ch.proxy ""

    git config --global http.https://stash.eap.bit.admin.ch.proxy ""

    echo '###Git has been configured!'
    git config --list


    echo '###Update Project'
    git fetch
    git pull
fi

 echo "###Init to install your desktop"
 ansible-playbook playbook.yml --connection=local -become-method=sudo   --extra-vars "ansible_sudo_pass=secret"
