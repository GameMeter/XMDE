# Stage 1
sudo sh $HOME/XMDE/applications.sh
sh $HOME/XMDE/aur-applications.sh
# Stage 2
sh $HOME/XMDE/xmonad-configure.sh
# Stage 3 
echo "

You will need to setup the SDDM background, XMonad background, GTK themes and cursors themes yourself
For XMonad: Nitrogen
GTK Themes: orchis-theme-git -> lxappearance
cursors theme: oero-cursors-git -> lxappearance

If the installation failed then, it either has bugs i don't know of, you didnt install paru or tough luck
"
