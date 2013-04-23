Cookbooks where initialized as submodules
-----------------------------------------

```shell
git submodule add https://github.com/opscode-cookbooks/apt cookbooks/apt
git submodule add https://github.com/opscode-cookbooks/ohai cookbooks/ohai
git submodule add https://github.com/opscode-cookbooks/build-essential cookbooks/build-essential
git submodule add https://github.com/opscode-cookbooks/openssl cookbooks/openssl
git submodule add https://github.com/opscode-cookbooks/git cookbooks/git
git submodule add https://github.com/opscode-cookbooks/users cookbooks/users
git submodule add https://github.com/opscode-cookbooks/logrotate cookbooks/logrotate
git submodule add https://github.com/opscode-cookbooks/fail2ban cookbooks/fail2ban
git submodule add https://github.com/opscode-cookbooks/postgresql cookbooks/postgresql
git submodule add https://github.com/opscode-cookbooks/nginx cookbooks/nginx
git submodule add https://github.com/fnichol/chef-ruby_build cookbooks/ruby_build
git submodule add https://github.com/fnichol/chef-rbenv cookbooks/rbenv
git submodule add https://github.com/opscode-cookbooks/firewall cookbooks/firewall
git submodule add https://github.com/opscode-cookbooks/ufw cookbooks/ufw
git submodule add https://github.com/opscode-cookbooks/sudo cookbooks/sudo
git submodule add https://github.com/opscode-cookbooks/runit cookbooks/runit
git submodule add https://github.com/opscode-cookbooks/yum cookbooks/yum
git submodule add https://github.com/opscode-cookbooks/dmg cookbooks/dmg
git submodule add https://github.com/opscode-cookbooks/windows cookbooks/windows
git submodule add https://github.com/opscode-cookbooks/chef_handler cookbooks/chef_handler
```


Update all the submodules
-------------------------

```shell
git submodule update --init
```

Install and launch vagrant
--------------

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
