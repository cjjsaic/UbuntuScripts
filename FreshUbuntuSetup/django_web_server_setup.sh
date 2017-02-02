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
if [ -f ${pip_config_file} ]; then:
	echo "pip.cnf aleady exist."
	:> ${pip_config_file}
	echo "[global]" >> ${pip_config_file}
	echo "index-url = https://pypi.tuna.tsinghua.edu.cn/simple" >> ${pip_config_file}
	echo "[install]" >> ${pip_config_file}
	echo "trusted-host=mirrors.aliyun.com" >> ${pip_config_file}
else:
	echo "[global]" >> ${pip_config_file}
	echo "index-url = https://pypi.tuna.tsinghua.edu.cn/simple" >> ${pip_config_file}
	echo "[install]" >> ${pip_config_file}
	echo "trusted-host=mirrors.aliyun.com" >> ${pip_config_file}
fi

# install oh-my-zsh
sudo apt install curl
sudo apt install wget
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
chsh -s /bin/zsh

# install python3 packages
sudo pip3 install django
sudo pip3 install gunicore
sudo pip3 install psycopg2
sudo pip3 install djangorestframework

# install nginx and supervisor
sudo apt install nginx
sudo apt install supervisor

# download sample gunicorn conf and supervisor conf and nginx conf to ~/SampleConfs
cd ~
mkdir SampleConfs
wget https://github.com/jinfagang/UbuntuScripts/blob/master/FreshUbuntuSetup/sample_confs/sample_gunicorn.conf
wget https://github.com/jinfagang/UbuntuScripts/blob/master/FreshUbuntuSetup/sample_confs/sample_supervisor.conf
wget https://github.com/jinfagang/UbuntuScripts/blob/master/FreshUbuntuSetup/sample_confs/sample_nginx
echo "settings save into ~/SampleConfs"
echo "all done!"
