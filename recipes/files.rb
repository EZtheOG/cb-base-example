# Chef specific bootstrap process

#root initiation 
directory "/root/.ssh" do
  owner "root"
  group "root"
  mode "0700"
  action :create
end

cookbook_file "/root/.ssh/known_hosts" do
 source "/root/.ssh/known_hosts"
 mode 0600
 owner "root"
 group "root"
end

cookbook_file "/root/.bash_profile" do
 source "/root/.bash_profile"
 mode 0600
 owner "root"
 group "root"
end

# Directories
directory '/u' do
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

directory '/u/log' do
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

directory '/u/logs' do
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

directory '/opt/scripts' do
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end


# files
template '/etc/profile' do
    source 'profile.erb'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end 

cookbook_file '/opt/scripts/git.sh' do
    source '/opt/scripts/git.sh'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

#motd banner
cookbook_file '/etc/motd' do
    source '/etc/motd'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end 

#Bashrc
cookbook_file '/etc/bashrc' do
    source '/etc/bashrc'
    owner 'root'
    group 'root'
    mode '0644'
    action :create
end


#sshd_config - not ideal to do this way but am doing this just to get going
#should use LWRP for sshd
cookbook_file '/etc/ssh/sshd_config' do
    source '/etc/ssh/sshd_config'
    owner 'root'
    group 'root'
    mode '0644'
    action :create
    notifies :restart, 'service[sshd]', :immediately
    not_if {node.name =~ /shared-bastion-001/ }
end

