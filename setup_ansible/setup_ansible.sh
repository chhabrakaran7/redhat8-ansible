#!/bin/bash
## Setup ansible script ##
## Created by Karan Chhabra 23/2/2021 ##

#Pull epel#
dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y

#Enable ansible repo and install ansible#
yum install --enablerepo epel-playground ansible -y