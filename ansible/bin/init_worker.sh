#!/bin/bash
# ------------------------------------------------------------------
# [Anousone Khemmanivong] Ansible Worker Init
# 
# Loads ssh settings and automatically subscribes to the machine to
# the hosts file in /ansible/etc/hosts
# ------------------------------------------------------------------

hlocation=/ansible/etc/hosts
worker=$(cat $hlocation | wc -l)
ipaddr=$(hostname -I)
if ! grep -q "$ipaddr" $hlocation
then
  echo -e "ansible_worker_$worker ansible_host=$ipaddr" >> $hlocation;
fi
cat $hlocation
