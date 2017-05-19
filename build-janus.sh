#!/bin/bash -e

source ./janus-version

git clone https://github.com/meetecho/janus-gateway.git
cd janus-gateway
git checkout ${JANUS_VERSION}
sh autogen.sh
./configure --enable-websockets --disable-data-channels --disable-rabbitmq --disable-mqtt --enable-post-processing
make
sudo make install
