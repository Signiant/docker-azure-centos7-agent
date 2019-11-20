# docker-azure-centos7-agent

CentOS 7 image with devtoolset-3 (GCC 4.9) installed from SCL.  It also creates
a user vsts\_azpcontainer (default Azure Devops user) with a home directory for
building in.

Remember when using packages installed from SCL (RHEL/CentOS software
collections) that you must source the collection in any scripts that use them.

So to use GCC, within the build script, insert the following:

    source scl_source enable devtoolset-3

to make GCC 4.9 available.
