OS Image Builder
================

- Packer builds base OS images (RHEL/Fedora) from Kickstart and outputs VirtualBox/Vagrant Box/KVM/VMware images.
- Vagrant calls Ansible scripts to perform post-provisioning tasks.

Prereq
------
1. Download installation media to `../iso`.
2. Install `packer` and `vagrant`.
3. Optionally, install `ansible`. Builds are designed to use `ansible-local`, but you can change to use `ansible` in `Vagrantfile`.


Typical Commands
----------------

```bash
make -j 5 libvirt                 # Execute 5 builds of libvirt, in parallel
packer build fedora30base.json    # Build a Fedora 30 image
vagrant box list                  # List current boxes
vagrant box remove fedora 30      # Cleanup old box
vagrant box add --name fedora30 builds/virtualbox-fedora30.box # Add the new box
vagrant init fedora30             # Init the box. Creates a Vagrantfile you can edit.
vagrant up                        # Start the box
vagrant provision                 # Run ansible scripts, etc.
vagrant destroy                   # Destroy the vm
```

Troubleshooting
---------------

```bash
# Firewall: VMware builds fail. Add a rule to allow your VM to connect and retrieve the ks file
sudo firewall-cmd --zone=public \
    --add-rich-rule 'rule family="ipv4" source address=192.168.188.0/24 accept'

# Existing VMs preventing new builds
rm -rf ~/VirtualBox\ VMs/virtualbox-centos-7-base/
```

TODO
----

1. Merge multiple builders
2. Cloud image support
3. CI/CD build
4. Post-base image scripts (ansible)

Add Images
----------
- Debian
- CoreOS
- SuSE
- OpenBSD
- Raspbian

Fixme
-----
1. Fix broken build vmware-ubuntu-18.04-base
2. Add iso_download_url variables to all images