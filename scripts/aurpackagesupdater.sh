#!/usr/bin/bash

# A little script for updating the packages I have installed from aur.

# Google chrome.
git clone https://aur.archlinux.org/google-chrome.git
cd google-chrome
makepkg -i
cd ..
rm -rf google-chrome


# Zoom.
git clone https://aur.archlinux.org/zoom.git
cd zoom
makepkg -i
cd ..
rm -rf zoom


# Skype.
git clone https://aur.archlinux.org/skypeforlinux-stable-bin.git
cd skypeforlinux-stable-bin
makepkg -i
cd ..
rm -rf skypeforlinux-stable-bin


# Nodejs-nativefier.
#git clone https://aur.archlinux.org/nodejs-nativefier.git
#cd nodejs-nativefier
#makepkg -i
#cd ..
#rm -rf nodejs-nativefier


# Whatsapp.
#git clone https://aur.archlinux.org/whatsapp-nativefier.git
#cd whatsapp-nativefier
#makepkg -i
#cd ..
#rm -rf whatsapp-nativefier
