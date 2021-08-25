FROM debian:9

RUN apt-get update
RUN apt-get install -y gawk wget git-core diffstat unzip texinfo gcc-multilib \
    build-essential chrpath socat cpio python python3 python3-pip python3-pexpect \
		xz-utils debianutils iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev \
		pylint3 xterm locales locales-all curl

RUN mkdir -p /home/yocto/bin
RUN curl https://storage.googleapis.com/git-repo-downloads/repo-1 > /home/yocto/bin/repo
RUN chmod a+x /home/yocto/bin/repo

ENV LANG=en_US.UTF-8
ENV PATH=/home/yocto/bin:$PATH

RUN groupadd -g 1000 yocto
RUN useradd -rm -d /home/yocto -g yocto -u 1000 -p yocto yocto
RUN mkdir -p /home/yocto/projects
RUN chown yocto:yocto /home/yocto/projects

USER yocto
WORKDIR /home/yocto
