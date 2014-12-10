FROM ubuntu:14.04
MAINTAINER Shunichi Matsuda "lciel@gmail.com"

# Install packages
RUN mkdir /setup
ADD ./install_packages.sh /setup/install_packages.sh
RUN /setup/install_packages.sh && rm -rf /setup

ENV PATH /opt/eb-cli/eb/linux/python2.7:$PATH

