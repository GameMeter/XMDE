cd
# Installing my preferred AUR helper
sudo pacman -S git --noconfirm
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --noconfirm
# Installing the packages for my build
paru -S --noconfirm xorg rofi xorg-xrandr xorg-xinit terminater windscribe-v2-bin lxapperance zsh thunar zsh-theme-powerlevel10k-git librewolf-bin vlc nomacs-git xmonad xmobar qt xmonad-contrib dmenu nitrogen picom-tryone-git pamixer sublime-text-4 timeshift btop neofetch sddm-theme-corners-git sddm oreo-cursors orchis-theme-git
# Returning to home directory for stage 2
cd 
