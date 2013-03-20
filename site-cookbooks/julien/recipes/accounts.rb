group "deployer" do
  gid     1000
end

user("deployer") do
	uid       1010
	gid       1000
	shell     "/bin/bash"
	comment   "no comment"
	home      "/home/deployer"
end

