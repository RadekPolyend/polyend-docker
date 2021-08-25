FROM debian:9

RUN apt-get update
RUN apt-get install -y gawk wget git-core diffstat unzip texinfo gcc-multilib \
    build-essential chrpath socat cpio python python3 python3-pip python3-pexpect \
		xz-utils debianutils iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev \
		pylint3 xterm locales locales-all curl bc su sudo

RUN mkdir -p /usr/local/bin
RUN curl https://storage.googleapis.com/git-repo-downloads/repo-1 > /usr/local/bin/repo
RUN chmod a+x /usr/local/bin/repo

ENV LANG=en_US.UTF-8
ENV PATH=/usr/local/bin:$PATH

ENTRYPOINT ["/bin/bash"]
