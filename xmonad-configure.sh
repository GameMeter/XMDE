# Disabling connectivity check
sh $HOME/XMDE/no-ping.sh
# Making the XMonad config directory and file
mkdir $HOME/.xmonad
# Activating a script that writes the config
cd
mkdir $HOME/.config
sudo sh XMDE/xmonad-config-write.sh
mv $HOME/xmonad.hs $HOME/.xmonad/
# Moving the default image
cd
mkdir $HOME/wallpaper
mv $HOME/XMDE/wallpaper/*.png wallpaper/
# User has to setup nitrogen on their own bcuz its GUI-based
# Making dir for the xmobar config
mkdir $HOME/.config/xmobar
touch $HOME/.config/xmobar/xmobarrc
cd $HOME/.config/xmobar
# Executing a script that writes the config
sh $HOME/XMDE/xmobar-config-write.sh
# Creating the picom config
cd
mkdir $HOME/.config/picom
touch $HOME/.config/picom/picom.conf
cd $HOME/.config/picom/
echo "corner-radius = 10;" > picom.conf
# Install the custom grub bootloader
cd $HOME
git clone https://github.com/vinceliuice/grub2-themes
sudo sh $HOME/grub2-themes/install.sh -s 1080p -t vimix
mv $HOME/grub2-theme/backgrounds/1080p/*.* wallpaper
# Configuring SDDM
sudo systemctl enable sddm
sudo rm /usr/lib/sddm/sddm.conf.d/default.conf
cd /usr/lib/sddm/sddm.conf.d/
sudo sh /home/$(whoami)/XMDE/SDDM-config-write.sh
cd 
cd /usr/share/sddm/themes/
sudo git clone https://github.com/MarianArlt/sddm-sugar-dark
sudo cp $HOME/wallpaper/*-t*.* /usr/share/sddm/themes/sddm-suger-dark/
sudo rm /usr/share/sddm/themes/sddm-sugar-dark/Background.jpg
sudo mv /usr/share/sddm/themes/sddm-sugar-dark/*-t*.* /usr/share/sddm/themes/sddm-sugar-dark/Background.jpg
# Configuring Alacritty
cd
mkdir .config/alacritty
mv $HOME/XMDE/alacritty.yml .config/alacritty
# Setting up conky
cd
sh $HOME/XMDE/victorconky/install.sh
mkdir .config/conky
sh $HOME/XMDE/conky-config-write.sh
mv $HOME/conky.conf $HOME/.config/conky/
# Setting up supposed librewolf default conf
mkdir $HOME/.librewolf/6el0b0wq.Def
mv $HOME/XMDE/Libreconfig/*.* $HOME/.librewolf/6el0b0wq.Def
# Customize neofetch
mkdir $HOME/.config/neofetch
mv $HOME/XMDE/config.conf $HOME/.config/neofetch/
# Making a flash of the system
sudo timeshift --create
# Finishing touches to the terminal
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
