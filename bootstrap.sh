#!/usr/bin/env bash

function available {
    command -v $1 >/dev/null 2>&1
}

function install_pkg {
    if $(available apt-get) ; then
        PKG_MANAGER="apt-get"
    else
        PKG_MANAGER="yum"
    fi

    sudo $PKG_MANAGER -y install $1

    if [ $? -ne 0 ] ; then
        exit 1
    fi 
}

function install_ansible {
    if ! $(available pip) ; then
        install_pkg python-dev
        install_pkg python-pip
    fi

    sudo pip install ansible

    if [ $? -ne 0 ] ; then
        exit 1
    fi 
}

if ! $(available ansible) ; then
    echo "Ansible not available installing..."
    install_ansible >/dev/null
fi

ansible-playbook -i localhost, main.yml
