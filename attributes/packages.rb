# System and Python Packages
default['system']['pkg'] =                                      [
                                                                'deltarpm','denyhosts','strace','nmap','sysstat',
                                                                'coreutils','lsof','telnet','at','nc','bc','tcsh',
                                                                'traceroute','tcpdump','binutils','git','rsync',
                                                                'ruby','bash','curl','gcc'
                                                                ]

default['system']['python']['pkg'] =                            [
                                                                'amqp','anyjson','backports.ssl-match-hostname','billiard',
                                                                'docopt','jedi','jmespath','kombu','prompt-toolkit',
                                                                'ptpython','Pygments','python-dateutil','pytz','six',  
                                                                'wcwidth','wsgiref'
                                                                ]

default['python']['pip_version']                                = '8.1.2'
default['python']['setuptools_version']                         = true
