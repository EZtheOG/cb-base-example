# Logrotate rules for log files

# IPTables 
logrotate_app 'iptables' do
	cookbook  'logrotate'
	path      '/var/log/iptables'
    options   ['missingok', 'copytruncate', 'compress', 'notifempty']
  	frequency 'daily'
  	rotate    4
  	size '50M'
  	create '0644 root root'
end

