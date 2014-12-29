
```
$ cp templates/Vagrantfile ./
$ cp templates/hosts-vagrant inventory/$INVENTORYNAME
```

- Make changes to hostnames in those files 

```
$ vagrant up
```

- Master 443 TCP is fowarded to localhost:4567

