# Groups

group 'devs' do
    gid 1010
    action [:create]
end

# user_accounts

user_account 'jsmith' do
  	comment 'John Smith'
  	uid 1010
  	gid 1010
  	home '/home/jsmith'
  	shell '/bin/bash'
  	ssh_keys node['dev']['ssh']['jsmith']
  	action :create
end

