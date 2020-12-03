#!/bin/bash
# ------------------------------------------------------------------
# [Anousone Khemmanivong] Ansible Worker Init
# 
# Loads ssh settings and automatically subscribes to the machine to
# the hosts file in /ansible/etc/hosts
# ------------------------------------------------------------------

sh ./auto_worker_registration.sh
sh ./auto_master_registration.sh
