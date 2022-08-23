FROM python:3.7.13-slim
LABEL maintainer="Kodelint <kodelint@gmail.com>"

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
    apt-transport-https=2.2.4 \
    gcc=4:10.2.1-1 \
    sudo=1.9.5p2-3 \
    bash=5.1-2+deb11u1 \
    git=1:2.30.2-1 \
    make=4.3-4.1 \
    vim-tiny=2:8.2.2434-3+deb11u1 \
    curl=7.74.0-1.3+deb11u2 && \
    curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | tee /etc/apt/sources.list.d/kubernetes.list && \
    apt-get update && \
    apt-get install -y kubectl=1.24.4-00 && \
    rm -rf /tmp/* && \
    rm -rf /var/cache/apk/* && \
    rm -rf /var/tmp/*

RUN python3 -m pip install awscli==1.25.59  azure-cli==2.39.0 --no-cache-dir

CMD ["/bin/bash"]
