## Basic setup

```
$ cp templates/Vagrantfile ./
$ cp templates/hosts-vagrant inventory/$INVENTORYNAME
```

- Make changes to hostnames in those files 

```
$ vagrant up
```

#### To rerun the Ansible playbooks inside of your Vagrantfile
```
$ vagrant provision
```

- Master 443 TCP is fowarded to localhost:4567

## Running playbooks manually

```
$ export ANSIBLE_HOST_KEY_CHECKING=False
$ ansible-playbook -i inventory/$INVETORYNAME --private-key=~/.vagrant.d/insecure_private_key -u vagrant  /etc/ansible/playbooks/$PLAYBOOKNAME.yml
```

## Reaching your Vagrant VMs

```
$ vagrant ssh $HOSTNAME
```

- You can use the IPs inside of the inventory to talk with one VM to another
- The shared directory is for transfering files to the VMs (Nothing inside will be committed)
