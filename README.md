# Ansible Playground

Starting up control server and some nodes

    docker-compose build
    docker-compose up -d

Connect to control server

    docker exec -it master bash

Run playbook

    cd playbooks
    ansible-playbook HelloWorld.yml

Verify

    ssh server1 cat /tmp/testfile.txt

Tear Down

    exit
    docker-compose down