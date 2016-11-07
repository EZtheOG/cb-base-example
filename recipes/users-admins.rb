#
# Cookbook Name:: base
# Recipe:: user-admins
#
# Copyright 2016, Company
#
# All rights reserved - Do Not Redistribute
#

# Groups 
group 'admins' do
    gid 25
    action :create 
end

# Admin User Accounts
# SSH keys in attributes

user_account 'Optimus Prime' do
	comment 'Optimus Prime'
  	uid 902
  	gid 25
  	home '/home/oprime'
  	shell '/bin/bash'
  	ssh_keys node['admin']['ssh']['oprime']
  	action :create
end
