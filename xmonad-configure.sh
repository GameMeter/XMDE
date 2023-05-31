# Making the XMonad config directory and file
mkdir /home/$(whoami)/.xmonad
touch /home/$(whoami)/.xmonad/xmonad.hs
cd /home/$(whoami)/.xmonad
# Activating a script that writes the config
cd
mkdir /home/$(whoami)/.config
sudo sh XMDE/xmonad-config-write.sh
# Moving the default image
cd
mkdir /home/$(whoami)/wallpaper
mv /home/$(whoami)/XMDE/wallpaper/*.png wallpaper/
# User has to setup nitrogen on their own bcuz its GUI-based
# Making dir for the xmobar config
mkdir /home/$(whoami)/.config/xmobar
touch /home/$(whoami)/.config/xmobar/xmobarrc
cd /home/$(whoami)/.config/xmobar
# Executing a script that writes the config
sh /home/$(whoami)/XMDE/xmobar-config-write.sh
# Creating the picom config
cd
mkdir /home/$(whoami)/.config/picom
touch /home/$(whoami)/.config/picom/picom.conf
cd /home/$(whoami)/.config/picom/
echo "corner-radius = 10;" > picom.conf
# Install the custom grub bootloader
cd $HOME
git clone https://github.com/vinceliuice/grub2-themes
sudo sh $HOME/grub2-themes/install.sh -s 1080p -t vimix
# Configuring SDDM
sudo systemctl enable sddm
sudo rm /usr/lib/sddm/sddm.conf.d/default.conf
cd /usr/lib/sddm/sddm.conf.d/
sudo sh /home/$(whoami)/XMDE/SDDM-config-write.sh
cd 
cd /usr/share/sddm/themes/
sudo git clone https://github.com/MarianArlt/sddm-sugar-dark
# Configuring Alacritty
cd
mkdir .config/alacritty
sh alacritty-config-write.sh
mv config .config/alacritty/
# Making a flash of the system
timeshift --create
