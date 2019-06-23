export PACKER_LOG=1
export PACKER=packer
export VAGRANT=vagrant
export PACKER_KEY_INTERVAL=10ms

all: libvirt virtualbox vmware
libvirt: libvirt-rhel-8-base libvirt-centos-7-base libvirt-fedora-30-base libvirt-alpine-3.10-base libvirt-ubuntu-18.04-base
virtualbox: virtualbox-rhel-8-base virtualbox-centos-7-base virtualbox-fedora-30-base virtualbox-alpine-3.10-base virtualbox-ubuntu-18.04-base
vmware: vmware-rhel-8-base vmware-centos-7-base vmware-fedora-30-base vmware-alpine-3.10-base vmware-ubuntu-18.04-base

rhel-8: vmware-rhel-8-base virtualbox-rhel-8-base libvirt-rhel-8-base
centos-7: vmware-centos-7-base virtualbox-centos-7-base libvirt-centos-7-base
fedora-30: vmware-fedora-30-base virtualbox-fedora-30-base libvirt-fedora-30-base 



#############################################################################
# Libvirt: make -j 3 libvirt
#############################################################################

# [X] RHEL 8
libvirt-rhel-8-base:
	$(PACKER) inspect specs/$@.json | tee -a log/$@.log
	$(PACKER) build --force specs/$@.json | tee -a log/$@.log
	$(VAGRANT) box remove $@ | tee -a log/$@.log; true 
	$(VAGRANT) box add --name $@ builds/$@/$@.box | tee -a log/$@.log
	$(VAGRANT) box list | tee -a log/$@.log

# [X] CentOS 7
libvirt-centos-7-base:
	$(PACKER) inspect specs/$@.json | tee -a log/$@.log
	$(PACKER) build --force specs/$@.json | tee -a log/$@.log
	$(VAGRANT) box remove $@ | tee -a log/$@.log; true 
	$(VAGRANT) box add --name $@ builds/$@/$@.box | tee -a log/$@.log
	$(VAGRANT) box list | tee -a log/$@.log

# [X] Fedora 30 Server
libvirt-fedora-30-base:
	$(PACKER) inspect specs/$@.json | tee -a log/$@.log
	$(PACKER) build --force specs/$@.json | tee -a log/$@.log
	$(VAGRANT) box remove $@ | tee -a log/$@.log; true 
	$(VAGRANT) box add --name $@ builds/$@/$@.box | tee -a log/$@.log
	$(VAGRANT) box list | tee -a log/$@.log

# [ ] Alpine 3.1 Standard
libvirt-alpine-3.10-base:
	$(PACKER) inspect specs/$@.json | tee -a log/$@.log
	$(PACKER) build --force specs/$@.json | tee -a log/$@.log
	$(VAGRANT) box remove $@ | tee -a log/$@.log; true 
	$(VAGRANT) box add --name $@ builds/$@/$@.box | tee -a log/$@.log
	$(VAGRANT) box list | tee -a log/$@.log

# [X] Ubuntu 18.04 Server
libvirt-ubuntu-18.04-base:
	$(PACKER) inspect specs/$@.json | tee -a log/$@.log
	$(PACKER) build --force specs/$@.json | tee -a log/$@.log
	$(VAGRANT) box remove $@ | tee -a log/$@.log; true 
	$(VAGRANT) box add --name $@ builds/$@/$@.box | tee -a log/$@.log
	$(VAGRANT) box list | tee -a log/$@.log



#############################################################################
# VirtualBox
#############################################################################
# [X] RHEL 8
virtualbox-rhel-8-base:
	$(PACKER) inspect specs/$@.json | tee -a log/$@.log
	$(PACKER) build --force specs/$@.json | tee -a log/$@.log
	$(VAGRANT) box remove $@ | tee -a log/$@.log; true 
	$(VAGRANT) box add --name $@ builds/$@/$@.box | tee -a log/$@.log
	$(VAGRANT) box list | tee -a log/$@.log

# [X] CentOS 7
virtualbox-centos-7-base:
	$(PACKER) inspect specs/$@.json | tee -a log/$@.log
	$(PACKER) build --force specs/$@.json | tee -a log/$@.log
	$(VAGRANT) box remove $@ | tee -a log/$@.log; true 
	$(VAGRANT) box add --name $@ builds/$@/$@.box | tee -a log/$@.log
	$(VAGRANT) box list | tee -a log/$@.log

# [X] Fedora 30 Server
virtualbox-fedora-30-base:
	$(PACKER) inspect specs/$@.json | tee -a log/$@.log
	$(PACKER) build --force specs/$@.json | tee -a log/$@.log
	$(VAGRANT) box remove $@ | tee -a log/$@.log; true 
	$(VAGRANT) box add --name $@ builds/$@/$@.box | tee -a log/$@.log
	$(VAGRANT) box list | tee -a log/$@.log

# [ ] Alpine 3.1 Standard
virtualbox-alpine-3.10-base:
	$(PACKER) inspect specs/$@.json | tee -a log/$@.log
	$(PACKER) build --force specs/$@.json | tee -a log/$@.log
	$(VAGRANT) box remove $@ | tee -a log/$@.log; true 
	$(VAGRANT) box add --name $@ builds/$@/$@.box | tee -a log/$@.log
	$(VAGRANT) box list | tee -a log/$@.log

# [ ] Ubuntu 18.04 Server
virtualbox-ubuntu-18.04-base:
	$(PACKER) inspect specs/$@.json | tee -a log/$@.log
	$(PACKER) build --force specs/$@.json | tee -a log/$@.log
	$(VAGRANT) box remove $@ | tee -a log/$@.log; true 
	$(VAGRANT) box add --name $@ builds/$@/$@.box | tee -a log/$@.log
	$(VAGRANT) box list | tee -a log/$@.log



#############################################################################
# VMware
#############################################################################
# [X] RHEL 8
vmware-rhel-8-base:
	$(PACKER) inspect specs/$@.json | tee -a log/$@.log
	$(PACKER) build --force specs/$@.json | tee -a log/$@.log
	$(VAGRANT) box remove $@ | tee -a log/$@.log; true 
	$(VAGRANT) box add --name $@ builds/$@/$@.box | tee -a log/$@.log
	$(VAGRANT) box list | tee -a log/$@.log

# [X] CentOS 7
vmware-centos-7-base:
	$(PACKER) inspect specs/$@.json | tee -a log/$@.log
	$(PACKER) build --force specs/$@.json | tee -a log/$@.log
	$(VAGRANT) box remove $@ | tee -a log/$@.log; true 
	$(VAGRANT) box add --name $@ builds/$@/$@.box | tee -a log/$@.log
	$(VAGRANT) box list | tee -a log/$@.log

# [X] Fedora 30 Server
vmware-fedora-30-base:
	$(PACKER) inspect specs/$@.json | tee -a log/$@.log
	$(PACKER) build --force specs/$@.json | tee -a log/$@.log
	$(VAGRANT) box remove $@ | tee -a log/$@.log; true 
	$(VAGRANT) box add --name $@ builds/$@/$@.box | tee -a log/$@.log
	$(VAGRANT) box list | tee -a log/$@.log

# [ ] Alpine 3.1 Standard
vmware-alpine-3.10-base:
	$(PACKER) inspect specs/$@.json | tee -a log/$@.log
	$(PACKER) build --force specs/$@.json | tee -a log/$@.log
	$(VAGRANT) box remove $@ | tee -a log/$@.log; true 
	$(VAGRANT) box add --name $@ builds/$@/$@.box | tee -a log/$@.log
	$(VAGRANT) box list | tee -a log/$@.log

# [ ] Ubuntu 18.04 Server
vmware-ubuntu-18.04-base:
	$(PACKER) inspect specs/$@.json | tee -a log/$@.log
	$(PACKER) build --force specs/$@.json | tee -a log/$@.log
	$(VAGRANT) box remove $@ | tee -a log/$@.log; true 
	$(VAGRANT) box add --name $@ builds/$@/$@.box | tee -a log/$@.log
	$(VAGRANT) box list | tee -a log/$@.log



#############################################################################
# Clean
#############################################################################
clean:
	rm -rf builds/
	rm -rf log/*