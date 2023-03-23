FROM ubuntu:20.04

# Pakage `tzdata` should be installed to make the enviroment vairable `TZ` work
# Setting the DEBIAN_FRONTEND environment variable suppresses the prompt that lets you select the correct timezone from a menu.
ENV TZ Asia/Shanghai
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
        && apt-get install -y --no-install-recommends \
                make tzdata \
                zlib1g-dev \
                libudev1 libudev-dev \
                libpci-dev \
                libpciaccess-dev \
                build-essential \
                uuid uuid-dev zlib1g-dev \
                liblz-dev liblzo2-2 liblzo2-dev \
                lzop git-core curl \
                u-boot-tools \
                mtd-utils \
                android-sdk-libsparse-utils \
                android-sdk-ext4-utils \
                openjdk-8-jdk device-tree-compiler \
                gdisk m4 \
                libz-dev git \
                gnupg flex bison gperf \
                libsdl1.2-dev libesd-java \
                squashfs-tools \
                zip curl \
                libncurses5-dev \
                pngcrush schedtool \
                libxml2 libxml2-utils \
                xsltproc lzop libc6-dev \
                schedtool g++-multilib \
                lib32z1-dev lib32ncurses5-dev \
                lib32readline-dev gcc-multilib \
                libswitch-perl \
                libssl-dev \
                unzip zip \
                liblz4-tool \
                git ssh make gcc \
                liblz4-tool \
                vim expect g++ patchelf chrpath gawk texinfo chrpath diffstat binfmt-support qemu-user-static live-build bison flex fakeroot cmake gcc-multilib g++-multilib unzip device-tree-compiler python3-pip libncurses5-dev rsync subversion sed make binutils build-essential gcc g++ wget python libncurses5 bzr cvs git mercurial patch gzip bzip2 perl tar cpio unzip rsync file bc wget qemu-user-static live-build -y\
                
        && apt-get autoremove -y \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*rm /var/log/alternatives.log /var/log/apt/* \
        && rm /var/log/* -r
