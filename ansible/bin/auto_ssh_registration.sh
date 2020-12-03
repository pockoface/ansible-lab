#!/bin/bash
# ------------------------------------------------------------------
# [Anousone Khemmanivong] Ansible Worker Init
# 
# Loads ssh settings and automatically subscribes to the machine to
# the hosts file in /ansible/etc/hosts
# ------------------------------------------------------------------

hosts=$(cat /ansible/etc/hosts | grep ansible_host | awk -F '=' '{print $2}')

for HOST in $hosts
do
  sshpass -p 'Docker!' ssh-copy-id -oStrictHostKeyChecking=no $HOST
done
cat ~/.ssh/known_hosts
