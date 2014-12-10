#!/usr/bin/env bash

if ! [ `which ansible` ]; then
    apt-add-repository ppa:ansible/ansible
    apt-get update -y
    apt-get install -y ansible
fi

ansible-playbook -i /vagrant/ansible/hosts /vagrant/ansible/site.yml
