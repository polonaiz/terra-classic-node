FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y tzdata && \
    ln -fs /usr/share/zoneinfo/Asia/Seoul /etc/localtime && \
    dpkg-reconfigure --frontend noninteractive tzdata

RUN apt-get update && \
    apt-get install -y vim bash-completion wget sysstat dstat net-tools curl tmux

RUN apt-get update && \
    apt-get install -y build-essential git

# go1.18.1
RUN apt-get update && \
    apt-get install -y golang

# xplad v1.0.0
RUN cd /root && \
    git clone https://github.com/xpladev/xpla && \
    cd /root/xpla && \
    git checkout v1.0.0 && \
    make install && \
    mv /root/go/bin/xplad /usr/local/bin/xplad_v1.0.0 && \
    cd /root && \
    rm -rf /root/xpla

# xplad v1.1.0
RUN cd /root && \
    git clone https://github.com/xpladev/xpla && \
    cd /root/xpla && \
    git checkout tags/v1.1.0 && \
    make install && \
    mv /root/go/bin/xplad /usr/local/bin/xplad_v1.1.0 && \
    cd /root && \
    rm -rf /root/xpla


