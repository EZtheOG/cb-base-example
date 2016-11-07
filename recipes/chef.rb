# Install Chef
include_recipe "chef-client"

directory '/etc/chef/ohai/hints' do
    action :create
    recursive true
end

# Setup EC2 Json file for Ohai 
cookbook_file '/etc/chef/ohai/hints/ec2.json' do
    source '/etc/chef/ohai/hints/ec2.json'
    action :create
    not_if {File.exists?("/etc/chef/ohai/hints/ec2.json")}
end