# Making the XMonad config directory and file
mkdir .xmonad
touch .xmonad/xmonad.hs
cd .xmonad
# Activating a script that writes the config
sh XMDE/xmonad-config-write.sh
# Moving the default image
cd
mkdir wallpaper
mv XMDE/wallpaper/*.png wallpaper/
# User has to setup nitrogen on their own bcuz its GUI-based
# Making dir for the xmobar config
mkdir .config/xmobar
touch .config/xmobar/xmobarrc
cd .config/xmobar
# Executing a script that writes the config
sh xmobar-config-write.sh
# Creating the picom config
cd
mkdir .config/picom
touch .config/picom/picom.conf
cd .config/picom
echo "corner-radius = 10;" > picom.conf
# Install the custom grub bootloader
sudo sh /home/$(whoami)/XMDE/xenlism-grub-arch-1080p/install.sh
# Configuring SDDM
sudo systemctl enable sddm
sudo rm /usr/lib/sddm/sddm.conf.d/default.conf
cd /usr/lib/sddm/sddm.conf.d/
sudo sh /home/$(whoami)/XMDE/SDDM-config-write.sh
cd 
cd /usr/share/sddm/themes/
sudo git clone https://github.com/MarianArlt/sddm-sugar-dark
# Making a flash of the system
timeshift --create
