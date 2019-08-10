git clone https://github.com/Yuan-W/rtl8821cu
cd rtl8821cu
make
sudo make install
sudo modprobe 8821cu
sudo usb_modeswitch -KW -v 0bda -p 1a2b
