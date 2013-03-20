#
# Cookbook Name:: julien
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "julien::firewall"

user_account 'deployer' do
  # keys for file ~/.ssh/authorized keys
  ssh_keys  ['paste your public ssh key here']
end

group "admin" do
  members ['julien', 'deployer']
  action :create
end

group "sudo" do
  members ['julien', 'deployer']
  action :create
end

execute "upgrade packages" do
  action :run
  command "apt-get -y upgrade"
end

execute "set up path for bash" do
  command <<-EOC
    sudo echo 'export PATH="/home/#{node['username']}/.rbenv/bin:$PATH"' >> /home/#{node['username']}/.bashrc
    sudo echo 'eval "$(rbenv init -)"' >> /home/#{node['username']}/.bashrc
  EOC
  action :run
end