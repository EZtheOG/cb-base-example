
# Installs Sudoers and sets it up
include_recipe 'sudo'

# These are system files for users in /etc/sudoers.d. 
# Add a file, and add that file to the attributes array
#	
node['sudo']['sudoers']['sudoers.d'].each do |sudoers|
  cookbook_file sudoers do
    source sudoers
    mode 0440
    owner "root"
    group "root"
    action :create
  end
end
