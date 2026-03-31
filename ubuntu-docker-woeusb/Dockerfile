FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
	--no-install-recommends \
	bash \
	coreutils \
	util-linux \
	grep \
	gawk \
	findutils \
	parted \
	wget \
	dosfstools \
	ntfs-3g \
	wimtools \
	p7zip-full \
	git \
	ca-certificates \
	grub2-common \
	grub-pc-bin \
	grub-pc \
	&& rm -rf /var/lib/apt/lists/*

WORKDIR /opt
RUN git clone https://github.com/WoeUSB/WoeUSB.git

WORKDIR /opt/WoeUSB
RUN chmod +x sbin/woeusb
RUN ln -s /opt/WoeUSB/sbin/woeusb /usr/local/bin/woeusb

WORKDIR /
CMD ["bash"]
