#!/usr/bin/bash
ip=`ifconfig | grep "172.16.0" | awk '{print $2}'`
grep -w "$ip" /etc/hosts | awk '{print $2}' | xargs echo > /etc/hostname 
