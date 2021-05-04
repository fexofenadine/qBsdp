#!/bin/bash
FILE=/usr/bin/strip
if test -f "$FILE"; then
    echo "strip already installed, exiting"
    exit 0
fi
echo "installing binutils"
apt update
apt install -y binutils
echo "stripping tag from libQt5Core.so.5"
strip --remove-section=.note.ABI-tag /usr/lib/x86_64-linux-gnu/libQt5Core.so.5

