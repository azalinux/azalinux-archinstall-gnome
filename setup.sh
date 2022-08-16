#!/bin/bash -x
set -e
set -u

echo -n "127.0.0.1 localhost" >> /etc/hosts
echo -n "::1       localhost" >> /etc/hosts
echo -n "127.0.1.1 myhostname.localdomain myhostname" >> /etc/hosts

pacman -S --noconfirm --needed vi
#pacman -S --noconfirm --needed vim

# visudo [uncomment "Wheel root access"] (to save type: :wq )
echo " visudo is about to run - uncomment the 'wheel root access' then type ':wq' to save and exit :)"
sleep 3
visudo

sudo systemctl enable sshd

sudo pacman -S --noconfirm --needed cups cups-pdf
sudo pacman -S --noconfirm --needed gutenprint
#sudo pacman -S --noconfirm --needed gtk3-print-backends
#sudo pacman -S --noconfirm --needed libcups
sudo pacman -S --noconfirm --needed system-config-printer

sudo systemctl enable cups.service

#sudo pacman -S --noconfirm --needed firewalld
sudo pacman -S --noconfirm --needed adobe-source-sans-pro-fonts
#sudo pacman -S --noconfirm --needed cantarell-fonts
sudo pacman -S --noconfirm --needed noto-fonts
sudo pacman -S --noconfirm --needed terminus-font
sudo pacman -S --noconfirm --needed ttf-bitstream-vera
sudo pacman -S --noconfirm --needed ttf-dejavu
sudo pacman -S --noconfirm --needed ttf-droid
sudo pacman -S --noconfirm --needed ttf-inconsolata
sudo pacman -S --noconfirm --needed ttf-liberation
sudo pacman -S --noconfirm --needed ttf-roboto
sudo pacman -S --noconfirm --needed ttf-ubuntu-font-family
sudo pacman -S --noconfirm --needed tamsyn-font

#sudo pacman -S --noconfirm --needed pipewire-pulse
#sudo pacman -S --noconfirm --needed bluez
#sudo pacman -S --noconfirm --needed bluez-libs
sudo pacman -S --noconfirm --needed bluez-utils
sudo pacman -S --noconfirm --needed blueberry
sudo systemctl --global enable pipewire-pulse

sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service

#sudo pacman -S --noconfirm --needed baobab
#sudo pacman -S --noconfirm --needed accountsservice
sudo pacman -S --noconfirm --needed dconf-editor
#sudo pacman -S --noconfirm --needed nano
sudo pacman -S --noconfirm --needed traceroute

sudo pacman -S --noconfirm --needed ffmpegthumbnailer
#sudo pacman -S --noconfirm --needed gnome-disk-utility
#sudo pacman -S --noconfirm --needed gnome-keyring
#sudo pacman -S --noconfirm --needed gnome-system-monitor
#sudo pacman -S --noconfirm --needed gnome-tweak-tool
sudo pacman -S --noconfirm --needed gtk-engine-murrine
sudo pacman -S --noconfirm --needed gvfs-smb
sudo pacman -S --noconfirm --needed kvantum
#sudo pacman -S --noconfirm --needed kvantum-theme-arc
sudo pacman -S --noconfirm --needed lsb-release
sudo pacman -S --noconfirm --needed mlocate
sudo pacman -S --noconfirm --needed polkit-gnome
sudo pacman -S --noconfirm --needed qt5ct
#sudo pacman -S --noconfirm --needed sane
sudo pacman -S --noconfirm --needed sysstat
sudo pacman -S --noconfirm --needed screenfetch
sudo pacman -S --noconfirm --needed nautilus-image-converter
sudo pacman -S --noconfirm --needed ipset
sudo pacman -S --noconfirm --needed dnsutils
#sudo pacman -S --noconfirm --needed galculator
#sudo pacman -S --noconfirm --needed curl
sudo pacman -S --noconfirm --needed dmidecode
sudo pacman -S --noconfirm --needed glances
sudo pacman -S --noconfirm --needed clamtk
sudo pacman -S --noconfirm --needed brasero
sudo pacman -S --noconfirm --needed net-tools
sudo pacman -S --noconfirm --needed hexchat
sudo pacman -S --noconfirm --needed gimp
sudo pacman -S --noconfirm --needed p7zip
sudo pacman -S --noconfirm --needed nfs-utils


sudo pacman -S --noconfirm --needed grub-customizer 
sudo pacman -S --noconfirm --needed inkscape
sudo pacman -S --noconfirm --needed nomacs
#sudo pacman -S --noconfirm --needed ristretto



sudo pacman -S --noconfirm --needed gtop
sudo pacman -S --noconfirm --needed gparted
sudo pacman -S --noconfirm --needed simplescreenrecorder
sudo pacman -S --noconfirm --needed filezilla
sudo pacman -S --noconfirm --needed geany
sudo pacman -S --noconfirm --needed meld
sudo pacman -S --noconfirm --needed catfish
sudo pacman -S --noconfirm --needed unace unrar zip unzip sharutils uudeview arj cabextract file-roller xarchiver
sudo pacman -S --noconfirm --needed firefox

sudo pacman -S --noconfirm --needed qbittorrent
sudo pacman -S --noconfirm --needed neofetch
sudo pacman -S --noconfirm --needed chromium
sudo pacman -S --noconfirm --needed libreoffice-fresh
sudo pacman -S --noconfirm --needed mpv

sudo pacman -R --noconfirm epiphany

sudo pacman -S --noconfirm --needed samba
sudo wget "https://raw.githubusercontent.com/azalinux/azalinux-archinstall-gnome/main/smb.conf" -O /etc/samba/smb.conf
sudo smbpasswd -a aza
sudo systemctl enable smb nmb
