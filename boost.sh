# sudo apt-get install libboost-all-dev

# OR

wget https://boostorg.jfrog.io/artifactory/main/release/1.81.0/source/boost_1_81_0.tar.gz
tar xzvf boost_1_81_0.tar.gz
cd boost_1_81_0/

./bootstrap.sh --prefix=/usr/
./b2
sudo ./b2 install