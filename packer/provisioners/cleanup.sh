#!/bin/bash

# Grub interface names
sed -i 's/rhgb quiet/net.ifnames=0/' /etc/default/grub

# Disable SELinux
sed -i -e 's/^SELINUX=.*/SELINUX=permissive/' /etc/selinux/config                                                                                                     
sed -i -e 's/#UseDNS yes/UseDNS no/' /etc/ssh/sshd_config      

# Config
echo "LANG=en_US.utf-8" >> /etc/environment
echo "LC_ALL=en_US.utf-8" >> /etc/environment
echo "blacklist i2c_piix4" >> /etc/modprobe.d/modprobe.conf
echo "blacklist intel_rapl" >> /etc/modprobe.d/modprobe.conf
sed -i -e 's/installonly_limit=5/installonly_limit=2/' /etc/yum.conf
sed -i -e 's/GRUB_TIMEOUT=5/GRUB_TIMEOUT=3/' /etc/default/grub
sed -i -e 's/GRUB_DEFAULT=saved/GRUB_DEFAULT=0/' /etc/default/grub
grub2-mkconfig -o /boot/grub2/grub.cfg

# Cleanup
package-cleanup -y --oldkernels --count=1
# FIXME: package-cleanup has to be executed with one of the options: --dupes, --leaves, --orphans, --problems or --cleandupes
yum -y remove yum-utils
yum -y autoremove
yum clean all
rm -rf /tmp/*
rm -rf /var/cache/*
rm -f /var/log/wtmp /var/log/btmp
dd if=/dev/zero of=/empty bs=1M
rm -f /empty
cat /dev/null > ~/.bash_history && history -c
