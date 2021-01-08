#!/usr/bin/bash

# A small script for updating aur packages.

# Google Chrome.
git clone https://aur.archlinux.org/google-chrome.git
cd google-chrome
makepkg -i
cd ..
rm -rf google-chrome


# Skype.
git clone https://aur.archlinux.org/skypeforlinux-stable-bin.git
cd skypeforlinux-stable-bin.git
makepkg -i
cd ..
rm -rf skypeforlinux-stable-bin


# Zoom.
git clone https://aur.archlinux.org/zoom.git
cd zoom
makepkg -i
cd ..
rm -rf zoom


# Nodejs-nativefier.
git clone https://aur.archlinux.org/nodejs-nativefier.git
cd nodejs-nativefier
makepkg -i
cd ..
rm -rf nodejs-nativefier


# Whatsapp-nativefier.
git clone https://aur.archlinux.org/whatsapp-nativefier.git
cd whatsapp-nativefier
makepkg -i
cd ..
rm -rf whatsapp-nativefier
