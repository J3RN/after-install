# Disclaimer
echo "This could take a while... Go sleep\n"

# Update
echo "\nUpdating...\n"
pacman -Syu --noconfirm

# Install stuff
echo "\nInstalling software...\n"

# Coding
pacman -S --noconfirm git vim 

# CLI Tools
pacman -S --noconfirm xclip sshfs tmux

# ZSH
pacman -S --noconfirm zsh

# Apps
pacman -S --noconfirm geary guake gimp vlc weechat chromium synapse

# Silly things
pacman -S --noconfirm fortune-mod cowsay

# Gaming
pacman -S --noconfirm steam jre7-openjdk

#### Special Installs from Other Files ####

# Make them executable
chmod +x ./*.sh

# Install RVM
#./rvm.sh

# Say goodbye
echo "All finished!\n"
exit 0
