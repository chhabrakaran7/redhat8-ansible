### RedHat Ansible repository [RHEL 8]

This repository is dedicated for installation of RedHat Ansible on RHEL 8 platform. This repository will also be home to various learnings and playbooks that we create as a part of the RHEL 8 Ansible journey.

This is a work in progress and updates will be added to the repository frequently
#### Setup Ansible
`Virtualization platform: VMWare Workstation 16 PRO`

`Number of VMs: 3 [Ansible Controller and 2 host servers]`

`Operating System [All three VMs]: CentOS 8.3.2011-x86_64-dvd1.iso`

`Ansible Controller configuration: 4GB Memory, 1vCPU Processor and 25GB HDD`

`Host Servers configuration: 1GB Memory, 1vCPU Processor and 20GB HDD respectively`

#### Ansible Controller

1. Install Ansible on the Ansible Controller node.
2. Script location [Setup and Install Ansible]: redhat8-ansible/setup_ansible/setup_ansible.sh
3. The above script pulls down the "epel-release-latest-8.noarch.rpm" from the fedora project, enables the "epel-playground" repo and installs ansible. 