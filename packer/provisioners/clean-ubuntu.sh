#!/bin/bash


# Cleanup
apt-get autoremove
dd if=/dev/zero of=/empty bs=1M
rm -f /empty
cat /dev/null > ~/.bash_history && history -c
sync