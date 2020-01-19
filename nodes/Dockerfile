FROM debian:9.5

RUN apt-get update && apt-get -y --no-install-recommends install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg gnupg-agent \
    software-properties-common \
    && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - \
    && apt-key fingerprint 0EBFCD88 \
    && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
    sudo \
    docker-ce docker-ce-cli containerd.io \
    openssh-server \
    python \
    python-pip \
    python-setuptools

COPY ssh_config /etc/ssh/ssh_config
COPY sshd_config /etc/ssh/sshd_config
    
COPY authorized_keys /root/.ssh/authorized_keys
    
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
    
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
    
CMD tail -f /dev/null
