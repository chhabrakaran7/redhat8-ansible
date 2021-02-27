#!/bin/bash

# Created by Karan Chhabra 27/2/21
# "dovecot" utility is used to generate SHA512 encrypted password which can then be used to set password for a created user.

## Install dovecot ##
yum install dovecot -y

echo "================================================================================================================="
echo "================================================================================================================="

## Verify dovecot installation ##
rpmquery dovecot
if [[ "$?" -eq 0 ]]; then
        echo "Dovecot installed successfully. Generating random SHA512 Encrypted password"

        # Generate SHA512 encrypted password
        # The above command prompts user to enter a password of his/her choice to generate a SHA512 encrypted hash value
        # This hash value can then be used to set the password for a created user.
        pass=$(doveadm pw -s SHA512-CRYPT)
        hashvalue=`echo $pass | awk -F} '{print $2}'`
        echo "The hash value is :: $hashvalue"

else
        echo "dovecot installation failed"
fi
