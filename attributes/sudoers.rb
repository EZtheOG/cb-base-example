# Environment $PATH for /etc/profile
default['sudo']['sudoers']['env_path']                          = '/sbin:/bin:/usr/sbin:/usr/bin:$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/pgsql-9.4/bin:/opt/aws/bin:/opt/sensu/embedded/bin'
# Don't add users here, create files in sudoers.d -- don't use these attributes

# Sudoers
override['authorization']['sudo']['passwordless']               = true
override['authorization']['sudo']['include_sudoers_d']          = true
override['authorization']['sudo']['sudoers_defaults']           = [
                                                                  'secure_path = /usr/local/bin:/usr/local/sbin:/sbin:/bin:/usr/sbin:/usr/bin:/opt/sensu/embedded/bin/',
                                                                  '!visiblepw',  
                                                                  'always_set_home',    
                                                                  'env_reset',    
                                                                  'env_keep =  "COLORS DISPLAY HOSTNAME HISTSIZE INPUTRC KDEDIR LS_COLORS"',
                                                                  'env_keep += "MAIL PS1 PS2 QTDIR USERNAME LANG LC_ADDRESS LC_CTYPE"',
                                                                  'env_keep += "LC_COLLATE LC_IDENTIFICATION LC_MEASUREMENT LC_MESSAGES"',
                                                                  'env_keep += "LC_MONETARY LC_NAME LC_NUMERIC LC_PAPER LC_TELEPHONE"',
                                                                  'env_keep += "LC_TIME LC_ALL LANGUAGE LINGUAS _XKB_CHARSET XAUTHORITY"                                                                  
                                                                  ']
default['sudo']['sudoers']['sudoers.d']                         = ['/etc/sudoers.d/02_admins', '/etc/sudoers.d/02_cloud-init','/etc/sudoers.d/02_devs',
                                                                   '/etc/sudoers.d/10_sensu_client'
                                                                  ]