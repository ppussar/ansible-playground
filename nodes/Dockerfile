FROM debian:stretch-slim

RUN apt-get update && apt-get -y --no-install-recommends install \
        apt-transport-https \
        ca-certificates \
        curl \
        lsb-release \
        gnupg gnupg-agent \
        software-properties-common \
    &&  curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg \
    && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
        $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
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
