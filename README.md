Download cookbooks - update the submodules
------------------------------------------

```shell
git submodule update --init
```

Install and launch vagrant
--------------------------

```shell
gem install vagrant

vagrant up
```

Setup SSH on vragrant to use PK authentication
----------------------------------------------

```shell
cat ~/.ssh/id_rsa.pub | ssh vagrant@192.168.0.10 "cat >> ~/.ssh/authorized_keys; chmod 600 ~/.ssh/authorized_keys"
```

Password is vagrant, see http://docs-v1.vagrantup.com/v1/docs/base_boxes.html

Setup chef locally and cook vagrant
-----------------------------------

```shell
gem install knife-solo

knife solo prepare vagrant@192.168.0.10

knife solo cook vagrant@192.168.0.10 nodes/default.json
```

# Issue with Postgres localization
http://stackoverflow.com/questions/4929180/configuring-locales-on-linux-for-postgresql
