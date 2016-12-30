# Setip theme like Mac
# setup themes
# install icons
sudo add-apt-repository ppa:noobslab/icons
sudo apt-get update
sudo apt-get install ultra-flat-icons
# install Flat theme
wget https://github.com/anmoljagetia/Flatabulous/releases/download/16.04.1/Flatabulous-Theme.deb
sudo dpkg -i Flatabulous-Theme.deb

# set dock to bottom
gsettings set com.canonical.Unity.Launcher launcher-position Bottom
