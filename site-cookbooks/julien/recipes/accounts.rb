#
# Cookbook Name:: julien
# Recipe:: accounts
#
# Author:: Julien Pellet (<contact@julienpellet.com>)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#group "deployer" do
#  gid     1000
#end

user("deployer") do
	uid       1010
	gid       1000
	shell     "/bin/bash"
	comment   "no comment"
	home      "/home/deployer"
  supports  :manage_home => true
end
