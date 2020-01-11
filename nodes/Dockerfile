FROM debian:9.5
    
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    sudo \
    openssh-server \
    python
    
COPY ssh_config /etc/ssh/ssh_config
COPY sshd_config /etc/ssh/sshd_config
    
COPY authorized_keys /root/.ssh/authorized_keys
    
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
    
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
    
CMD tail -f /dev/null