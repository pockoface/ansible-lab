#!/bin/bash
# ------------------------------------------------------------------
# [Anousone Khemmanivong] Ansible Worker Init
# 
# Loads ssh settings and automatically subscribes to the machine to
# the hosts file in /ansible/etc/hosts
# ------------------------------------------------------------------

HOST=$(docker ps | grep ansible| head -n 1 | awk '{print $1}')
    
docker exec $HOST /bin/bash -c "nohup ./start.sh &"
docker exec $HOST /bin/bash -c "./ansible/bin/auto_ssh_registration.sh"
docker exec $HOST /bin/bash -c "cat /ansible/env/ansible_env >> ~/.bashrc"
