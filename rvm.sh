# Install rvm
su - jonathan   # Change to not root. RVM should not be system-wide
echo "\nInstalling RVM, Ruby, Rails\n"
\curl -L https://get.rvm.io | bash
source /home/jonathan/.rvm/scripts/rvm
rvm install ruby
gem install rails
su - root       # Change back to root
