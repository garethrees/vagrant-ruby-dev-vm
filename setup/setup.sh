#!/bin/sh

apt -y update
apt -y upgrade

if ! which ansible-playbook > /dev/null; then apt -y install ansible; fi

ansible-playbook /tmp/setup/main.yml -i /tmp/setup/inventory.ini
