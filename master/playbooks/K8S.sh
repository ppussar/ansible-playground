#!/bin/bash

git clone https://github.com/rancher/ansible-playbooks.git /rancher-playbooks
sed -i '/^\[static_server\]/a ansible_ssh_port=22 ansible_ssh_host=server1 ansible_ssh_user=root\nansible_ssh_port=22 ansible_ssh_host=server2 ansible_ssh_user=root' /rancher-playbooks/inventory/hosts
sed -i '/^\[static_node\]/a ansible_ssh_port=22 ansible_ssh_host=server3 ansible_ssh_user=root\nansible_ssh_port=22 ansible_ssh_host=server4 ansible_ssh_user=root' /rancher-playbooks/inventory/hosts
sed -i '/^\[static_loadbalancer\]/a ansible_ssh_port=22 ansible_ssh_host=server5 ansible_ssh_user=root' /rancher-playbooks/inventory/hosts

echo "Run: cd /rancher-playbooks && ansible-playbook site.yml"
echo "Password: ansible"
