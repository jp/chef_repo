# enable platform default firewall
firewall "ufw" do
  action :enable
end

# open standard ssh port, enable firewall
firewall_rule "ssh" do
  port 22
  action :allow
  notifies :enable, "firewall[ufw]"
end

# open multiple ports for http/https, note that the protocol
# attribute is required when using ports
firewall_rule "http/https" do
  protocol :tcp
  ports [ 80, 443 ]
  action :allow
end
