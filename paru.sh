#!/bin/bash -x

set -e
set -u

sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --noconfirm

paru -S --noconfirm --needed --noedit pamac-aur
paru -S --noconfirm --needed --noedit realvnc-vnc-server
paru -S --noconfirm --needed --noedit realvnc-vnc-viewer
#sudo /usr/bin/vnclicense -add P98BK-34AF4-V2K63-TMBH8-BYNRA
sudo systemctl enable vncserver-x11-servicedd
