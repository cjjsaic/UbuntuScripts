#!/bin/bash
echo "=========installing Chinese input source=========="
sudo add-apt-repository ppa:fcitx-team/nightly  
sudo apt update
sudo apt install fcitx
sudo apt -f install
sudo apt install fcitx-config-gtk 
sudo apt install fcitx-table-all
sudo apt install im-switch
echo "=========installing googlepinyin input method=========="
sudo apt install fcitx-googlepinyin

echo "=========installing google-chrome-stable=========="
sudo wget https://repo.fdzh.org/chrome/google-chrome.list -P /etc/apt/sources.list.d/
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
sudo apt update
sudo apt install google-chrome-stable

echo "=========setting up python3 library=========="
sudo apt update
sudo apt install python3-pip
sudo pip3 install --upgrade pip
sudo pip3 install numpy
sudo pip3 install scipy
sudo pip3 install matplotlib
sudo pip3 install pandas

echo "=========installing ssh and git=========="
sudo apt update
sudo apt install openssh-server
sudo apt install git

echo "=========installing zsh-a beautiful terminal=========="
sudo apt install zsh
sudo chzh -s /usr/local/zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "=========installing shadowsocks-qt5-Break Wall!=========="
sudo add-apt-repository ppa:hzwhuang/ss-qt5
sudo apt-get update
sudo apt-get install shadowsocks-qt5

echo "=========installing tweak tools and plank dock=========="
sudo apt install unity-tweak-tool
sudo apt install plank

echo "All Done! Congratulations! Enjoy your Ubuntu!"
