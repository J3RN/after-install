version='vagrant_1.3.5_x86_64.deb'
dir=$(pwd)
cd ~/Downloads
if [ ! -e $version ]; then
  wget "http://files.vagrantup.com/packages/a40522f5fabccb9ddabad03d836e120ff5d14093/$version"
fi
dpkg -i $version
cd $dir
