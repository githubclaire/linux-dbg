FROM ubuntu:18.04

# Pakage `tzdata` should be installed to make the enviroment vairable `TZ` work
# Setting the DEBIAN_FRONTEND environment variable suppresses the prompt that lets you select the correct timezone from a menu.
ENV TZ Asia/Shanghai
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
        && apt-get install -y --no-install-recommends \
#                make tzdata \
#               zlib1g-dev \
#                libudev1 libudev-dev \
#                libpci-dev \
#                libpciaccess-dev \
#                build-essential \  
              repo git \
              ssh make gcc \
              libssl-dev liblz4-tool\
              expect g++ patchelf \
              chrpath gawk texinfo \
              chrpath diffstat binfmt-support\
 #               qemu-user-static live-build bison flex fakeroot cmake gcc-multilib g++-multilib\
 #               unzip\
 #               device-tree-compiler ncurses-dev\
        && apt-get autoremove -y \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*rm /var/log/alternatives.log /var/log/apt/* \
        && rm /var/log/* -r
