# Services so this cookbook can restart them 

service 'sshd' do
    action :nothing
end

execute 'restart-denyhosts' do
    command 'sudo /etc/init.d/denyhosts restart'
    action :nothing
end

execute 'restart-network' do
    command 'sudo /etc/init.d/network restart'
    action :nothing
end
