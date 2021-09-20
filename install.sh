#!/bin/bash

# GRUB theme install
sudo cp -r grub-theme/asustuf /boot/grub/themes/
sudo sed -i '/GRUB_THEME=/d' /etc/default/grub
echo -e "\nGRUB_THEME=asustuf" | sudo tee -a /etc/default/grub
sudo update-grub

# Plymouth theme install
sudo cp -r plymouth-theme/asustuf /usr/share/plymouth/themes/
sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/asustuf/asustuf.plymouth 200
sudo update-alternatives --auto default.plymouth
