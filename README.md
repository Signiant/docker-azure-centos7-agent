# docker-azure-centos7-agent

CentOS 7 image with devtoolset-3 (GCC 4.9) installed from SCL. It also has a
number of utilities including

* python3
* cmake v3.16
* umpire
* awscli
* ant
* zip/unzip
* perl

JAVA_HOME has also been set

Remember when using packages installed from SCL (RHEL/CentOS software
collections) that you must source the collection in any scripts that use them.

So to use GCC, within the build script, insert the following:

    source scl_source enable devtoolset-3

to make GCC 4.9 available.
