OS Image Builder
================

- Packer builds base OS images (RHEL/Fedora) from Kickstart and outputs VirtualBox/Vagrant Box/KVM/VMware images.
- Vagrant calls Ansible scripts to perform post-provisioning tasks.


Typical Commands
----------------

```bash
packer build fedora30base.json    # Build a Fedora 30 image
vagrant box list                  # List current boxes
vagrant box remove fedora 30      # Cleanup old box
vagrant box add --name fedora30 builds/virtualbox-fedora30.box # Add the new box
vagrant init fedora30             # Init the box. Creates a Vagrantfile you can edit.
vagrant up                        # Start the box
vagrant provision                 # Run ansible scripts, etc.
vagrant destroy                   # Destroy the vm
```
