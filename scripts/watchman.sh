#!/bin/bash

cd /tmp
rm -rf watchman
git clone https://github.com/facebook/watchman.git
cd watchman/
git checkout v4.9.0
sudo apt install -y autoconf automake build-essential python-dev libssl-dev libtool
./autogen.sh
./configure --enable-lenient
make
sudo make install