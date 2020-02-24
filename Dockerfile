FROM centos:7

RUN yum update -y && \
    yum install -y epel-release && \
    yum install -y centos-release-scl

RUN yum install -y \
    which \
    curl \
    sudo \
    make \
	python3 \
	python3-pip \
    tar \
    openssh-server \
    openssh-clients \
    git \
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
	patch \
	ant \
	zlib-devel

RUN printf "export JAVA_HOME=/usr/share/java\n" >> ~/.bashrc

RUN curl -L https://github.com/Kitware/CMake/releases/download/v3.16.1/cmake-3.16.1-Linux-x86_64.tar.gz | tar xz && \
    ln -sf $(pwd)/cmake-3.16.1-Linux-x86_64/bin/cmake /usr/local/bin && \
    ln -sf $(pwd)/cmake-3.16.1-Linux-x86_64/bin/ctest /usr/local/bin && \
    cmake --version && \
    ctest --version

RUN pip3 install umpire \
	&& pip3 install awscli \
	&& pip3 install --upgrade pip

RUN ln -sf /usr/bin/cmake3 /usr/bin/cmake
RUN ln -sf /usr/bin/ctest3 /usr/bin/ctest

EXPOSE 8080 22
