#!/bin/bash -e

echo "================= Installing basic packages ================"
apt-get update
apt-get install -y \
sudo \
curl

JFROG_VERSION=latest
echo "================= Adding jfrog-cli $JFROG_VERSION  ================"
curl -fL https://getcli.jfrog.io | bash -s v2
sudo chmod +x jfrog
mv jfrog /usr/bin/jfrog
