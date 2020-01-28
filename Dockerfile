FROM centos:7

RUN yum update -y && \
    yum install -y epel-release && \
    yum install -y centos-release-scl

RUN yum install -y \
    which \
    curl \
    sudo \
    make \
    python \
    tar \
    openssh-server \
    openssh-clients \
    git \
    cmake3 \
    python-pip \
    devtoolset-3-gcc \
    devtoolset-3-gcc-c++

RUN yum install -y zlib-devel
RUN pip install umpire==0.5.5 && pip install --upgrade pip
RUN ln -sf /usr/bin/cmake3 /usr/bin/cmake
RUN ln -sf /usr/bin/ctest3 /usr/bin/ctest

EXPOSE 8080 22
