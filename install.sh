# Disclaimer
echo "This could take a while... Go sleep\n"

# Delete link to examples. Because.
echo "Deleting link to examples"
rm ~/examples.desktop

# Add ppas
echo "Adding personal package archives"
add-apt-repository -y ppa:tiheum/equinox

# Update
echo "Updating...\n"
apt-get -y update && apt-get -y upgrade

# Install stuff
echo "Installing some software...\n"
# Seperate commands for parallel structure
apt-get -y install guake 
apt-get -y install arduino 
apt-get -y install intellij-idea-ce 
apt-get -y install eclipse
apt-get -y install build-essential
apt-get -y install gdebi
apt-get -y install xclip
apt-get -y install faenza-icon-theme
apt-get -y install faience-theme
apt-get -y install unity-tweak-tool
apt-get -y install libgconf2-dev

# Clean up apt
apt-get clean

# Download programs from sources
echo "Getting newer versions...\n"
if [ ! -e "eclipse-SDK-4.2.2-linux-gtk-x86_64.tar.gz" ]; then
	wget "http://ftp.osuosl.org/pub/eclipse/eclipse/downloads/drops4/R-4.2.2-201302041200/eclipse-SDK-4.2.2-linux-gtk-x86_64.tar.gz"
fi

if [ ! -e "ideaIC-12.1.3.tar.gz" ]; then
	wget "http://download-ln.jetbrains.com/idea/ideaIC-12.1.3.tar.gz"
fi

# Say goodbye
echo "All finished!\n"
exit 0
