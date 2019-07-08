# https://github.com/ImageMagick/ImageMagick/archive/7.0.8-53.tar.gz

tar xvzf ImageMagick-7.0.8-53.tar.gz
cd ImageMagick-7.0.8-53

./configure
make

sudo make install
sudo ldconfig /usr/local/lib

/usr/local/bin/convert logo: logo.gif
# Or
# make check