sudo apt remove --purge --auto-remove cmake

sudo apt-get install libssl-dev mesa-utils freeglut3-dev

version=3.25
build=2
wget https://cmake.org/files/v$version/cmake-$version.$build.tar.gz
tar -xzvf cmake-$version.$build.tar.gz
cd cmake-$version.$build/

./bootstrap
gmake -j8
sudo gmake install

cmake --version