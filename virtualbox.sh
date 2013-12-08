version='virtualbox-4.3_4.3.0-89960~Ubuntu~raring_amd64.deb'
dir=$(pwd)
cd ~/Downloads
if [ ! -e $version ]; then
  wget "http://download.virtualbox.org/virtualbox/4.3.0/$version"
fi
dpkg -i $version
cd $dir

