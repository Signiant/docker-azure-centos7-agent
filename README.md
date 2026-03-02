# docker-azure-centos7-agent

CentOS 7 image with devtoolset-7 (gcc 7.3.1) installed from SCL. It also has a
number of utilities including

* python3
* cmake v3.16
* umpire
* awscli
* ant
* zip/unzip
* perl

It also updates git from 1.8.3 to 2.43 needed for working with GoLang 1.25.7+

JAVA_HOME has also been set

Remember when using packages installed from SCL (RHEL/CentOS software
collections) that you must source the collection in any scripts that use them.

So to use GCC, within the build script, insert the following:

    source scl_source enable devtoolset-7

to make GCC 7.3.1 available.
