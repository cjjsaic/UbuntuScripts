# !/bin/bash
# this script for ubuntu16.04 for now

# install pip3
sudo apt update
sudo apt install python3-pip

# change pip source to tsinghua mirror
cd ~
mkdir .pip
cd .pip
pip_config_file="pip.cnf"
if [ -f {pip_config_file} ]; then:
	echo "pip.cnf aleady exist."
	:> {pip_config_file}
	echo "[global]" >> {pip_config_file}
	echo "index-url = https://pypi.tuna.tsinghua.edu.cn/simple" >> {pip_config_file}
	echo "[install]" >> {pip_config_file}
	echo "trusted-host=mirrors.aliyun.com" >> {pip_config_file}
else:
	echo "[global]" >> {pip_config_file}
	echo "index-url = https://pypi.tuna.tsinghua.edu.cn/simple" >> {pip_config_file}
	echo "[install]" >> {pip_config_file}
	echo "trusted-host=mirrors.aliyun.com" >> {pip_config_file}
fi