# Creates /etc/resolv.conf
template '/etc/resolv.conf' do
    source 'resolv.conf.erb'
    owner 'root'
    group 'root'
    mode '0644'
    action :create
    notifies :run, 'execute[restart-network]', :immediately
    variables({
        :aws_region => node['system']['dns']['config']['aws_region'], 
        :nameserver => node['system']['dns']['config']['nameserver']
    })
    # Restart happens to ensure DNS change happens 
    not_if { File::exists?("/etc/sysconfig/bootstrapped") }
end 

# Ensures that network doesn't restart at every run
execute 'bootstrapped' do
        command "touch /etc/sysconfig/bootstrapped"
        not_if { File::exists?("/etc/sysconfig/bootstrapped") }
end
