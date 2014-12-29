## Basic setup

```
$ cp templates/Vagrantfile ./
$ cp templates/hosts-vagrant inventory/$INVENTORYNAME
```

- Make changes to hostnames in those files 

```
$ vagrant up
```

- Master 443 TCP is fowarded to localhost:4567

## Running playbooks manually

```
$ export ANSIBLE_HOST_KEY_CHECKING=False
$ ansible-playbook -i inventory/$INVETORYNAME --private-key=~/.vagrant.d/insecure_private_key -u vagrant  /etc/ansible/playbooks/$PLAYBOOKNAME.yml
```
