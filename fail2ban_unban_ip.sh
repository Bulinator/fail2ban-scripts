#!/bin/bash

ip=$1

if [ ${#@} == 0 ]; then
    echo -e "\n"
    echo "Usage: $0 <ip addr>"
    echo -e "* IP: add ip address to unban\n"
fi

if [[ ! -z $ip ]]; then
    fail2ban-client set ssh unbanip $ip 
fi
