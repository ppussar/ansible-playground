FROM debian:stretch-slim
    
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    ansible \
    git \
    ssh \
    vim
    
COPY id_rsa /root/.ssh/id_rsa
COPY ansible_hosts /etc/ansible/hosts

RUN chmod 400 /root/.ssh/id_rsa

ENV ANSIBLE_HOST_KEY_CHECKING=False
ENV EDITOR=/usr/bin/vi

CMD echo docker exec -it master bash
CMD tail -f /dev/null
