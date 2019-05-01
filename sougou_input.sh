sudo apt-get remove ibus
sudo apt-get purge ibus
sudo apt-get remove indicator-keyboard
sudo apt install fcitx-table-wbpy fcitx-config-gtk
im-config -n fcitx
echo "needs reboot"
# sudo apt-get install -f
# fcitx-config-gtk3