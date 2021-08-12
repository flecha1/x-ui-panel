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

