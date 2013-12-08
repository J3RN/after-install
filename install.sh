# Disclaimer
echo "This could take a while... Go sleep\n"

# Delete link to examples. Because annoying.
if [ -e "~/examples.desktop" ]; then
	echo "Deleting link to examples"
	rm ~/examples.desktop
fi

# Update
echo "\nUpdating...\n"
apt-get -y update && apt-get -y upgrade

# Install stuff
echo "\nInstalling software...\n"

# Coding
apt-get -y install git
apt-get -y install vim
apt-get -y install arduino 
apt-get -y install python-matplotlib

# CLI Tools
apt-get -y install gdebi
apt-get -y install xclip
apt-get -y install curl
apt-get -y install sshfs
apt-get -y install tmux

# ZSH
apt-get -y install zsh

# Apps
apt-get -y install geary
apt-get -y install guake 
apt-get -y install gimp
apt-get -y install vlc
apt-get -y install weechat
apt-get -y install fortune
#apt-get -y install terminator
#apt-get -y install irssi
#apt-get -y install unity-tweak-tool

#### Special Installs from Other Files ####

# Make them executable
chmod +x ./*.sh

# Install RVM
./rvm.sh

# Install VirtualBox
#./virtualbox.sh

# Install Vagrant
#./vagrant.sh

# Clean up apt
apt-get clean

# Say goodbye
echo "All finished!\n"
exit 0
