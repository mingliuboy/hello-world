#!/bin/sh
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

echo "===================================="

echo "===================================="

cd hello-world/hello-world

ls -al

/usr/local/bin/pod install

cd ../..

ls -al

echo "end......"



