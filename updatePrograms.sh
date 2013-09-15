# Download programs from sources
echo "\nGetting newer versions...\n"
ECLVER="eclipse-SDK-4.3-linux-gtk-x86_64.tar.gz"

if [ -e "eclipse" ]; then
	sudo rm -rf eclipse
fi

if [ ! -e $ECLVER ]; then
	ECLDIR="R-4.3-201306052000/"

	echo "Dowloading $ECLVER"
	wget "http://ftp.osuosl.org/pub/eclipse/eclipse/downloads/drops4/$ECLDIR$ECLVER"
else
	echo "Archive already downloaded"
fi

echo "Unzipping $ECLVER"
tar -xzvf $ECLVER

if [ -e "/usr/lib/eclipse-old"]; then
	echo "Removing old-old eclipse"
	sudo rm -rf /usr/lib/eclipse-old
fi

echo "Moving old version"
sudo mv /usr/lib/eclipse /usr/lib/eclipse-old

echo "Installing new eclipse"
if [ mv eclipse ~/ ]; then
	ln -s ~/eclipse /usr/lib/eclipse
else
	echo "Failed"
fi

