#!/bin/bash
sudo apt-get update
sudo apt-get -y install git
cd ~
git clone https://github.com/dmlc/mxnet.git ~/mxnet --recursive
cd ~/mxnet
cp make/config.mk .
echo "USE_CUDA=1" >>config.mk
echo "USE_CUDA_PATH=/usr/local/cuda" >>config.mk
echo "USE_CUDNN=1" >>config.mk
echo "USE_DIST_KVSTORE=1" >>config.mk

# Install MXNet for Python with all required dependencies
cd ~/mxnet/setup-utils
bash install-mxnet-ubuntu-python.sh

# We have added MXNet Python package path in your ~/.bashrc.
# Run the following command to refresh environment variables.
$ source ~/.bashrc
cd ..
cd python
sudo python3 setup.py install