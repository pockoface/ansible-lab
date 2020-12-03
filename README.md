# Ansible lab

##### BUILD DOCKER IMAGE:
```bash
docker build -t ansible/centos-ssh:8 .
```

##### RUN THE DOCKER IMAGE:
```bash
docker run -t -d -P -v $(pwd)/ansible-lab/ansible:/ansible ansible/centos-ssh:8
```

##### RUN ANSIBLE SETUP:
```bash
./setup_ansible.sh
```
