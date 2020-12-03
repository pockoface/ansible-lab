#!/bin/bash
# ------------------------------------------------------------------
# [Anousone Khemmanivong] Ansible Worker Init
# 
# Loads ssh settings and automatically subscribes to the machine to
# the hosts file in /ansible/etc/hosts
# ------------------------------------------------------------------



hosts=($(docker ps | grep ansible | awk '{print $1}'))

docker exec "${hosts[0]}" /bin/bash -c "./ansible/bin/reset_worker.sh"

for HOST in "${hosts[@]:1}"
do
    docker exec $HOST /bin/bash -c "nohup ./start.sh &"
    docker exec $HOST /bin/bash -c "./ansible/bin/init_worker.sh"
done
