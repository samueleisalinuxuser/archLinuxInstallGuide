# archLinuxInstallGuide
my notes to install arch linux

[installation guide](https://wiki.archlinux.org/index.php/Installation_guide)

[Installation guide (Italiano)](https://wiki.archlinux.org/index.php/Installation_guide_(Italiano))

### wifi
```
wpa_passphrase "ssid" >> /etc/wpa_supplicant.conf
...password...
wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant.conf
```
### format the efi partition to fat32
```
mkfs.vfat -F 32 /dev/sdb1
```
### detect Windows 10, read and write other disks
```
pacman -Syu ntfs-3g
sudo mount -o remount,a /dev/sda1
sudo ntfsfix /dev/sda1
```
### install grub
```
pacman -Syu grub efibootmgr dosfstools os-prober mtools
mkdir /boot/EFI
mount /dev/sda1 /boot/EFI #Mount FAT32 EFI partition
#bootloader id is the name under which grub will appear in selections
grub-install --target=x86_64-efi --bootloader-id=grub_uefi --recheck
grub-mkconfig -o /boot/grub/grub.cfg
```
### install kde
```
pacman -Syu xorg xorg-xinit plasma kde-applications
systemctl enable sddm.service
systemctl enable NetworkManager.service
```
### delete the linux distribution from windows
```
open diskpart
select disk 1 #select the disk containing the linux distribution
clean
```
