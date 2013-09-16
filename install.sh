# Disclaimer
echo "This could take a while... Go sleep\n"

# Delete link to examples. Because.
if [ -e "~/examples.desktop" ]
then
	echo "Deleting link to examples"
	rm ~/examples.desktop
fi

# Add ppas
echo "Adding personal package archives"
add-apt-repository -y ppa:tiheum/equinox

# Update
echo "\nUpdating...\n"
apt-get -y update && apt-get -y upgrade

# Install stuff
echo "\nInstalling some software...\n"

# Coding
apt-get -y install git
apt-get -y install vim
apt-get -y install arduino 
apt-get -y install eclipse
apt-get -y install build-essential
apt-get -y install libgconf2-dev
apt-get -y install python-matplotlib

# CLI Tools
apt-get -y install gdebi
apt-get -y install xclip
apt-get -y install curl

# Apps
apt-get -y install guake 
apt-get -y install unity-tweak-tool
apt-get -y install gimp
apt-get -y install vlc

# Aesthetics
apt-get -y install faenza-icon-theme
apt-get -y install faience-theme

# Install rvm
echo "\nInstalling RVM, Ruby, Rails\n"
\curl -L https://get.rvm.io | bash
source /home/jonathan/.rvm/scripts/rvm
rvm install ruby
gem install rails

# Clean up apt
apt-get clean

# Update Eclipse
sudo ./updatePrograms.sh

# Say goodbye
echo "All finished!\n"
exit 0
