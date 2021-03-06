#!/bin/bash -eux

apt-add-repository -y ppa:webupd8team/java
apt-get update -q
echo debconf shared/accepted-oracle-license-v1-1 select true | \
     debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | \
     debconf-set-selections

apt-get install oracle-java8-installer -qy
