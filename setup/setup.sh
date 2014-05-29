#!/bin/sh

if ! which ansible-playbook > /dev/null; then apt-get -y install ansible; fi

ansible-playbook /tmp/setup/main.yml -i /tmp/setup/inventory.ini