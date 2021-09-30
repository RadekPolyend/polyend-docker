FROM ghcr.io/radekpolyend/polyend-docker:main

COPY polyend-pro-glibc-x86_64-toolchain-polyend-aarch64-polyend-t2-toolchain-5.4-zeus.sh /root
RUN /root/polyend-pro-glibc-x86_64-toolchain-polyend-aarch64-polyend-t2-toolchain-5.4-zeus.sh -y
RUN rm /root/polyend-pro-glibc-x86_64-toolchain-polyend-aarch64-polyend-t2-toolchain-5.4-zeus.sh
RUN echo "source /opt/polyend-pro/5.4-zeus/environment-setup-aarch64-poky-linux" >> /home/yocto/.bashrc

WORKDIR /home/yocto
USER yocto
