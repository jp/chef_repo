rbenv_ruby "2.0.0-p0"

rbenv_gem "bundler" do
  ruby_version "2.0.0-p0"
end

execute "set up path for bash" do
  command <<-EOC
    sudo echo 'export PATH="/home/#{node['username']}/.rbenv/bin:$PATH"' >> /home/#{node['username']}/.bashrc
    sudo echo 'eval "$(rbenv init -)"' >> /home/#{node['username']}/.bashrc
  EOC
  action :run
end
