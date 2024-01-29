#!/bin/bash
# If running i386 chromeos, then add the following line.
# To see if you have 386 or x86 arch, do the following:
# Chrome > Help > About
# uname -a
#sudo dpkg --add-architecture i386

# Prepare temp directory
sudo mkdir /root/.gnupg
sudo chmod 700 /root/.gnupg

# Import repository keys
wget -O- https://dl.winehq.org/wine-builds/winehq.key | gpg --dearmor | sudo tee /usr/share/keyrings/winehq.gpg

# Add repository
printf "deb [signed-by=/usr/share/keyrings/winehq.gpg] https://dl.winehq.org/wine-builds/debian/ bullseye main" | sudo tee -a /etc/apt/sources.list

# Update, install and configure
sudo apt update
sudo apt install --yes --install-recommends winehq-stable
winecfg
