BUILD DOCKER IMAGE:
docker build -t ansible/centos-ssh:8 .

RUN THE DOCKER IMAGE:
docker run -t -d -P -v /Users/akhemmanivong/akhemmanivong/ansible-lab/ansible:/ansible ansible/centos-ssh:8

RUN ANSIBLE SETUP:
./setup_ansible.sh
