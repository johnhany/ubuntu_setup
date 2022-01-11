# sudo apt-get install libboost-all-dev

# OR

wget https://boostorg.jfrog.io/artifactory/main/release/1.78.0/source/boost_1_78_0.tar.gz
tar xzvf boost_1_78_0.tar.gz
cd boost_1_78_0/

sudo apt-get update
sudo apt-get install build-essential g++ python-dev autotools-dev libicu-dev build-essential libbz2-dev libboost-all-dev

./bootstrap.sh --prefix=/usr/
./b2
sudo ./b2 install