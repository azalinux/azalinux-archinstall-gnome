#!/bin/bash -x

set -e
set -u

git clone https://aur.archlinux.org/trizen.git
cd trizen
makepkg -si --noconfirm

trizen -S --noconfirm --needed --noedit thunderbird-bin
trizen -S --noconfirm --needed --noedit pamac-aur
trizen -S --noconfirm --needed --noedit realvnc-vnc-server
trizen -S --noconfirm --needed --noedit realvnc-vnc-viewer
#sudo /usr/bin/vnclicense -add P98BK-34AF4-V2K63-TMBH8-BYNRA
sudo systemctl enable vncserver-x11-servicedd
