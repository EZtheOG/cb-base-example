#
# Default Attributes

# Chef Client Attributes 
override['chef_client']['interval']                             = '1800' #run chef 30mins
override['chef_client']['reload_config']                        = true #run chef when changes happen in cookbook
override['chef_client']['run_path']                             = '/var/run/chef/'
override['chef_client']['init_style']                           = 'init'

# NTP Settings
default['ntp']['conf']                                          = ['0.amazon.pool.ntp.org', '1.amazon.pool.ntp.org', '2.amazon.pool.ntp.org']
default['ntp']['servers']                                       = ['1.amazon.pool.ntp.org', '2.amazon.pool.ntp.org', '3.amazon.pool.ntp.org']
