sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
ubuntu-drivers devices
sudo apt-get install nvidia-driver-430

# download cudnn and extract
cd cudnn-10.1-xxx/cuda
sudo cp -P include/cudnn.h /usr/local/cuda/include
sudo cp -P lib64/libcudnn* /usr/local/cuda/lib64
sudo chmod a+r /usr/local/cuda/lib64/libcudnn*