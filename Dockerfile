FROM debian:9

RUN apt-get update
RUN apt-get install -y gawk wget git-core diffstat unzip texinfo gcc-multilib \
    build-essential chrpath socat cpio python python3 python3-pip python3-pexpect \
		xz-utils debianutils iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev \
		pylint3 xterm locales locales-all

ENV LANG=en_US.UTF-8

RUN groupadd -g 1000 yocto
RUN useradd -rm -d /home/yocto -g yocto -u 1000 -p yocto yocto

USER yocto
WORKDIR /home/yocto
