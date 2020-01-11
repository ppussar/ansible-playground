# Ansible Playground

Starting up control server and some nodes

    docker-compose up -d --build

Connect to control server

    docker exec -it ansible_master_1 bash

Run playbook

    cd playbooks
    ansible-playbook HelloWorld.yml

Verify

    ssh server1 cat /tmp/testfile.txt

Tear Down

    exit
    docker-compose down