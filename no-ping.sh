cd
echo '
[connectivity]
enable=false
' >> 20-connectivity.conf

sudo mv $HOME/20-connectivity.conf /etc/NetworkManager/conf.d/
