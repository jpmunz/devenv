#!/usr/env bash

command -v ansible >/dev/null 2>&1

if [ $? -ne 0 ]; then
    git clone git://github.com/ansible/ansible.git
    cd ./ansible
    source ./hacking/env-setup
fi

ansible-playbook site.yml
