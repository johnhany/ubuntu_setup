# /etc/apt/sources.list
# deb http://apt.llvm.org/trusty/ llvm-toolchain-trusty-8 main
# deb-src http://apt.llvm.org/trusty/ llvm-toolchain-trusty-8 main

wget -O - http://apt.llvm.org/llvm-snapshot.gpg.key|sudo apt-key add -
sudo apt-get update
sudo apt-get install clang-8 lldb-8