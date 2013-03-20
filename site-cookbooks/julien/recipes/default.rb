#
# Cookbook Name:: julien
# Recipe:: default
#

include_recipe "julien::firewall"
include_recipe "julien::install_nodejs"
include_recipe "julien::apt-get-upgrade"
include_recipe "julien::rbenv-setup"
