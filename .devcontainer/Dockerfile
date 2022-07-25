ARG VARIANT="jammy"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

RUN apt-get update && \
    apt-get install -y tzdata && \
    ln -fs /usr/share/zoneinfo/Asia/Seoul /etc/localtime && \
    dpkg-reconfigure --frontend noninteractive tzdata

RUN wget https://github.com/terra-money/classic-core/releases/download/v0.5.20/terra_0.5.20_Linux_x86_64.tar.gz && \
    tar zxvf terra_2.1.0_Linux_x86_64.tar.gz

RUN mkdir -p ~/.terra/config && \
    wget -O ~/.terra/config/genesis.json https://columbus-genesis.s3.ap-northeast-1.amazonaws.com/columbus-5-genesis.json
