#!/bin/bash
## Setup ansible script ##
## Created by Karan Chhabra 23/2/2021 ##

#Pull epel#
dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y

#Enable ansible repo and install ansible#
yum install --enablerepo epel-playground ansible -y

#Verify ansible installation#
ansible --version | head -1

if [[ "$?" -eq 0 ]]; then
        ans_version=`ansible --version | head -1`
        echo "Ansible is successfully installed and the version installed is "$ans_version""
        exit 0
else
        echo "Ansible is not configured correctly on the system. Please verify installation"
        exit 1
fi
