FROM centos:7

RUN yum update -y && \
    yum install -y epel-release && \
    yum install -y centos-release-scl

RUN yum install -y \
    which \
    curl \
    sudo \
    make \
    tar \
    openssh-server \
    openssh-clients \
    git \
    cmake3 \
    devtoolset-3-gcc \
    devtoolset-3-gcc-c++ \
	ncurses-devel \
	jq \
	zip \
	unzip \
	wget \
	perl \
	perl-Module-Load-Conditional \
	perl-core \
	pcre-devel \
	rsync \
	patch


# RUN yum install -y zlib-devel
RUN pip3 install umpire \
	&& pip3 install awscli \
	&& pip3 install --upgrade pip

RUN ln -sf /usr/bin/cmake3 /usr/bin/cmake
RUN ln -sf /usr/bin/ctest3 /usr/bin/ctest

EXPOSE 8080 22
