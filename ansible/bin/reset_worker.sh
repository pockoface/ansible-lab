#!/bin/bash
# ------------------------------------------------------------------
# [Anousone Khemmanivong] Ansible Worker Init
# 
# Loads ssh settings and automatically subscribes to the machine to
# the hosts file in /ansible/etc/hosts
# ------------------------------------------------------------------

echo $(head -n 1 /ansible/etc/hosts) > /ansible/etc/hosts
cat /ansible/etc/hosts
