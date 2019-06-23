#!/bin/bash

# Mount image
#mkdir /tmp/iso
#mount -t iso9660 -o loop /root/VBoxGuestAdditions.iso /tmp/iso

# Install additions
yum search kvm

# Cleanup
#umount /tmp/iso
#rm -rf /tmp/iso /root/VBoxGuestAdditions.iso

