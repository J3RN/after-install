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
apt-get -y install gimp
apt-get -y install vlc
apt-get -y install python-matplotlib

# Clean up apt
apt-get clean

# Download programs from sources
echo "Getting newer versions...\n"
ECLVER="eclipse-SDK-4.2.2-linux-gtk-x86_64.tar.gz"
if [ ! -e $ECLVER ]; then
	ECLDIR="R-4.2.2-201302041200/"
	
	echo "Dowloading $ECLVER"
	wget "http://ftp.osuosl.org/pub/eclipse/eclipse/downloads/drops4/$ECLDIR$ECLVER"
	
	echo "Unzipping $ECLVER"
	tar -xzvf $ECLVER

	echo "Removing archive"
	rm $ECLVER

	echo "Moving old version"
	mv /usr/lib/eclipse /usr/lib/eclipse-old
	
	echo "Installing new eclipse"
	mv eclipse /usr/lib/eclipse
fi

IDEAVER="ideaIC-12.1.4.tar.gz"
if [ ! -e $IDEAVER ]; then
	echo "Downloading $IDEAVER"
	wget "http://download-ln.jetbrains.com/idea/$IDEAVER"
	
	echo "Unzipping $IDEAVER"
        tar -xzvf $IDEAVER

        echo "Removing archive"
        rm $IDEAVER

        echo "Moving old version"
        mv /opt/intellij-idea-ce /opt/intellij-idea-ce-old

        echo "Installing new IntelliJ IDEA"
        # Haven't figured this out yet
fi

# Say goodbye
echo "All finished!\n"
exit 0
