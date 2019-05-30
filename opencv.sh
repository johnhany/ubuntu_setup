#! DO NOT BUILD UNDER ANACONDA ENV

# https://github.com/opencv/opencv/archive/4.1.0.tar.gz
# https://github.com/opencv/opencv_contrib/archive/4.1.0.tar.gz
# https://github.com/opencv/opencv_extra/archive/4.1.0.tar.gz

# https://raw.githubusercontent.com/opencv/opencv_3rdparty/8afa57abc8229d611c4937165d20e2a2d9fc5a12/face_landmark_model.dat
# rename it to
# 7505c44ca4eb54b4ab1e4777cb96ac05-face_landmark_model.dat
# put it under
# /.cache/data

# https://raw.githubusercontent.com/opencv/opencv_3rdparty/32e315a5b106a7b89dbed51c28f8120a48b368b4/ippicv/ippicv_2019_lnx_intel64_general_20180723.tgz
# rename it to
# c0bd78adb4156bbf552c1dfe90599607-ippicv_2019_lnx_intel64_general_20180723.tgz
# put it under
# /.cache/ippicv

sudo apt-get install build-essential checkinstall cmake pkg-config yasm git gfortran software-properties-common
sudo apt-get install ffmpeg x264 v4l-utils
sudo apt-get install libjpeg8-dev libpng-dev libtiff-dev libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev
sudo apt-get install libxine2-dev libv4l-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev
sudo apt-get install libgtk2.0-dev libtbb-dev libatlas-base-dev libfaac-dev libmp3lame-dev libtheora-dev
sudo apt-get install libvorbis-dev libxvidcore-dev libopencore-amrnb-dev libopencore-amrwb-dev libavresample-dev
sudo apt-get install libprotobuf-dev protobuf-compiler libgoogle-glog-dev libgflags-dev
sudo apt-get install libgphoto2-dev libeigen3-dev libhdf5-dev doxygen

sudo add-apt-repository "deb http://security.ubuntu.com/ubuntu xenial-security main"
sudo apt update
sudo apt install libjasper1 libjasper-dev

sudo pip3 install testresources

cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D WITH_TBB=ON -D WITH_V4L=ON -D WITH_IPP=ON -D WITH_OPENGL=ON -D WITH_CUDA=OFF \
    -D CMAKE_PREFIX_PATH=/home/john/Qt5.12.3/5.12.3/gcc_64/lib/cmake \
    -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib-4.1.0/modules \
    -D INSTALL_TESTS=ON -D OPENCV_TEST_DATA_PATH=/home/john/Downloads/opencv_extra-4.1.0/testdata \
    -D OPENCV_ENABLE_NONFREE=ON -D BUILD_DOCS=ON \
    ..

make -j4
sudo make install

make test