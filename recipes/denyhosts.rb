# sets up Denyhosts with inti file, config file, and restarts service
cookbook_file '/etc/init.d/denyhosts' do
    source '/etc/init.d/denyhosts'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

cookbook_file '/opt/denyhosts/bin/denyhosts_ctl' do
    source '/opt/denyhosts/bin/denyhosts_ctl'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

cookbook_file '/opt/denyhosts/bin/denyhosts.py' do
    source '/opt/denyhosts/bin/denyhosts.py'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

cookbook_file '/etc/hosts.allow' do
    source '/etc/hosts.allow'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

cookbook_file '/opt/denyhosts/data/allowed-hosts' do
    source '/opt/denyhosts/data/allowed-hosts'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end


template '/opt/denyhosts/etc/denyhosts.cfg' do
    source 'denyhosts.cfg.erb'
    owner 'root'
    group 'root'
    mode '0755'
    notifies :run, 'execute[restart-denyhosts]', :immediately
end 
