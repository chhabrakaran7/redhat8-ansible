## RedHat Ansible repository [RHEL 8]

This repository is dedicated for installation of RedHat Ansible on RHEL 8 platform. This repository will also be home to various learnings and playbooks that we create as a part of the RHEL 8 Ansible journey.

This is a work in progress and updates will be added to the repository frequently
### Setup Ansible

#### Environment Configurations

`Virtualization platform: VMWare Workstation 16 PRO`

`Number of VMs: 3 [Ansible Controller and 2 host servers]`

`Operating System [All three VMs]: CentOS 8.3.2011-x86_64-dvd1.iso`

`Ansible Controller configuration: 4GB Memory, 1vCPU Processor and 25GB HDD`

`Host Servers configuration: 1GB Memory, 1vCPU Processor and 20GB HDD respectively`

#### **Ansible Installation:**
##### Setup Ansible Controller
1. Install Ansible on the Ansible Controller node.
2. Script location [Setup and Install Ansible]: redhat8-ansible/setup_ansible/setup_ansible.sh
3. The above script pulls down the "epel-release-latest-8.noarch.rpm" from the fedora project, enables the "epel-playground" repo and installs ansible. 
4. Add entries of the host servers to "/etc/hosts" file to setup communication amongst the controller and two hosts using there hostnames. Entries should be made in format of "[IP ADDR] [HOSTNAME Server1]" and "[IP ADDR] [HOSTNAME SERVER2]". Example: 192.168.207.x host1.example.com
5. Generate ssh keys and setup password-less communication between the ansible controller and host servers.

    `ssh-keygen`
    
    `ssh-copy-id root@host1.example.com`
    
    `ssh-copy-id root@host2.example.com`
6. Copy /etc/hosts file to both host servers. This is done with an aim to setup communication between the controller and two hosts using their respective hostnames.

#### **Ansible Management:**
##### Generate Random SHA512 Encrypted password using "DOVECOT"
1. We can generate a random SHA512 Encrypted HASH VALUE for assigning passwords to created users either manually or via ansible.
`Script location: redhat-ansible/generate_password/generate_random_pass.sh`
  
##### Playbooks
Playbooks are YAML scripts that are used to do configuration management on the servers listed as a part of the ansible inventory.

As a part of this repository I'll be writing multiple playbooks with description of what each playbook is doing.
 
**Single task playbooks** 

1. A playbook that is written with a motive to perform only one task.    
2. I've added multiple examples for playbooks which perform single task.
3. Some added single task playbooks are: create user, delete user, add group and delete group on all hosts under inventory.

`Location: redhat8-ansible/playbooks/singletask_playbooks/`

**Multiple task playbooks**
1. A playbook that is written with a motive to perform multiple tasks.    
2. I've added multiple examples for playbooks which perform multiple tasks.
3. Added a multitask playbook: Setup FTP server

`Location: redhat8-ansible/playbooks/multitask_playbooks/`

##### Variables
As in any other programming/scripting language the use of a variable is a good practice. Some of the features of variables include: code re-use, perform multiple tasks, prevention of code duplication.
Just like any other language we will use variables in ansible code as well.

There are two major cases of variable use in ansible:

1. Variables within playbook:

   A case where the variables are defined and called within the playbook
   
   `Examples: redhat-ansible/variables/use_variables_within_playbook/`
   
2. Variables in a separate variables file:

    A case where the variables are defined in a separate variable file and are called on the fly in the main ansible playbook
    
    `Examples: redhat-ansible/variables/use_variables_in_separatefile/`
    
3. User input variables:

   A case where the variable is picked up from the user input while running playbook.
   
   `Examples: redhat-ansible/variables/user_input_variables/`

##### Sample Playbooks

1. There are multiple playbooks written and added to this github repository as a part of learning.
2. Sample playbooks are stored in the repository under a separate directory:

`redhat8-ansible/playbooks_ALL_examples/`
3. Following sample playbooks are added so far and more will be added as we move forward with our learnings.

**Create any user [User prompt]:** `redhat8-ansible/playbooks_ALL_examples/create-user-prompt-input.yaml`
 
**Delete any user [User prompt]:** `redhat8-ansible/playbooks_ALL_examples/create-user-prompt-input.yaml`

**Install any package [User prompt]:** `redhat8-ansible/playbooks_ALL_examples/install-packages-prompt-input.yaml`

**Remove any package [USer prompt]:** `redhat8-ansible/playbooks_ALL_examples/remove-packages-prompt-input.yaml`
 