# archInstallGuide
my notes to install arch linux

(Installation guide (Italiano))[https://wiki.archlinux.org/index.php/Installation_guide_(Italiano)]

====

wifi

====

wpa_passphrase "ssid" >> /etc/wpa_supplicant.conf

...password...

wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant.conf


========================================================

rilevare Windows 10, leggere e scrivere gli altri dischi

========================================================

pacman -Syu ntfs-3g



===============

installare grub

===============

pacman -Syu grub efibootmgr dosfstools os-prober mtools

mkdir /boot/EFI

mount /dev/sda1 /boot/EFI #Mount FAT32 EFI partition

grub-install --target=x86_64-efi --bootloader-id=grub_uefi --recheck

#bootloader id e' il nome con il quale apparira grub nelle selezioni

grub-mkconfig -o /boot/grub/grub.cfg


==============

installare kde

==============

pacman -Syu xorg plasma kde-applications

systemctl enable sddm.service

systemctl enable NetworkManager.service


===========================

cancellare linux da windows

===========================

aprire diskpart

select disk 1 #selezionare il disco con linux

clean
