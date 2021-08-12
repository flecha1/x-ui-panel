<<<<<<< HEAD
<<<<<<< HEAD
FROM ubuntu:21.04

CMD ["bash"]
ENV LC_ALL=C
ENV DEBIAN_FRONTEND=noninteractive
RUN  /bin/sh -c apt-get update \
    && apt-get install -y systemd systemd-sysv     \
    && apt-get clean     \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN /bin/sh -c rm -f /lib/systemd/system/multi-user.target.wants/*     /etc/systemd/system/*.wants/*     /lib/systemd/system/local-fs.target.wants/*     /lib/systemd/system/sockets.target.wants/*udev*     /lib/systemd/system/sockets.target.wants/*initctl*     /lib/systemd/system/sysinit.target.wants/systemd-tmpfiles-setup*     /lib/systemd/system/systemd-update-utmp*
VOLUME [/sys/fs/cgroup]
CMD  ["/lib/systemd/systemd"]
ENV SHELL=/bin/bash
RUN /bin/sh -c apt-get update     \
    && apt-get install -y wget procps     \
    && wget https://raw.githubusercontent.com/ypo777/v2-ui/master/install.sh --no-check-certificate     \
    && bash ./install.sh     \
    && rm ./install.sh     \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
VOLUME [/etc/v2-ui]
EXPOSE map[65432/tcp:{}]
=======
FROM  jrei/systemd-debian
ENV  SHELL /bin/bash
RUN  apt-get update \
    && apt-get install -y wget procps \
    && wget https://raw.githubusercontent.com/sprov065/x-ui/main/install.sh --no-check-certificate \
    && bash ./install.sh \
    && rm ./install.sh \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
VOLUME  [  "/etc/x-ui"  ]
EXPOSE  54321
>>>>>>> main
=======
FROM ubuntu:16.04
ENV SHELL /bin/bash
RUN apt-get update \
 && apt-get upgrade -y \
 && apt-get install -y wget
RUN  wget https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh --no-check-cretificate \
 && bash ./install.sh \
 && rm ./install.sh \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME ["/etc/x-ui"]
EXPOSE 54321

>>>>>>> e79a0d1c8a8c56a6ae29b73bcf159310c1a9632b
