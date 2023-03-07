sudo apt-get install libsystemd-dev libdrm-dev

cd ~/Downloads

git clone https://github.com/Syllo/nvtop.git
mkdir -p nvtop/build && cd nvtop/build
cmake ..

# If it errors with "Could NOT find NVML (missing: NVML_INCLUDE_DIRS)"
# try the following command instead, otherwise skip to the build with make.
# cmake .. -DNVML_RETRIEVE_HEADER_ONLINE=True

make
sudo make install