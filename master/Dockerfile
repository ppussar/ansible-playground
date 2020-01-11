FROM debian:9.5
    
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    ansible \
    ssh
    
COPY id_rsa /root/.ssh/id_rsa
COPY ansible_hosts /etc/ansible/hosts
ADD playbooks /playbooks

ENV ANSIBLE_HOST_KEY_CHECKING=False

CMD echo docker exec -it ansible_master_1 bash
CMD tail -f /dev/null
