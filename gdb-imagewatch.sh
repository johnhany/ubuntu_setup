git clone --recursive https://github.com/csantosbh/gdb-imagewatch
cd gdb-imagewatch

qmake .. BUILD_MODE=release PREFIX=/home/john
make -j4
make install

# edit ~/.gdbinit:
# source /home/john/bin/gdb-imagewatch/gdb-imagewatch.py

python3 /home/john/bin/gdb-imagewatch/gdb-imagewatch.py --test

# in gdb:
# plot variable_name
