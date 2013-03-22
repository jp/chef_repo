
git clone https://github.com/opscode-cookbooks/apt
git clone https://github.com/opscode-cookbooks/ohai
git clone https://github.com/opscode-cookbooks/build-essential
git clone https://github.com/opscode-cookbooks/openssl
git clone https://github.com/opscode-cookbooks/git
git clone https://github.com/opscode-cookbooks/users
git clone https://github.com/opscode-cookbooks/logrotate
git clone https://github.com/opscode-cookbooks/fail2ban
git clone https://github.com/opscode-cookbooks/postgresql
git clone https://github.com/opscode-cookbooks/nginx
git clone https://github.com/fnichol/chef-ruby_build ruby_build
git clone https://github.com/fnichol/chef-rbenv rbenv
git clone https://github.com/opscode-cookbooks/firewall
git clone https://github.com/opscode-cookbooks/ufw
git clone https://github.com/opscode-cookbooks/sudo


git clone https://github.com/opscode-cookbooks/runit
git clone https://github.com/opscode-cookbooks/yum
git clone https://github.com/opscode-cookbooks/dmg
git clone https://github.com/opscode-cookbooks/windows
git clone https://github.com/opscode-cookbooks/chef_handler

vagrant up

cat ~/.ssh/id_rsa.pub | ssh vagrant@192.168.0.10 "cat >> ~/.ssh/authorized_keys; chmod 600 ~/.ssh/authorized_keys"
# password is vagrant, see http://docs-v1.vagrantup.com/v1/docs/base_boxes.html

knife solo prepare vagrant@192.168.0.10

knife solo cook vagrant@192.168.0.10 nodes/default.json
