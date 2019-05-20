# sudo apt-get install libboost-all-dev

# OR

wget -O boost_1_70_0.tar.gz https://dl.bintray.com/boostorg/release/1.70.0/source/boost_1_70_0.tar.gz
tar xzvf boost_1_70_0.tar.gz
cd boost_1_70_0/

sudo apt-get update
sudo apt-get install build-essential g++ python-dev autotools-dev libicu-dev build-essential libbz2-dev libboost-all-dev

./bootstrap.sh --prefix=/usr/
./b2
sudo ./b2 install