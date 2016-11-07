# add the EPEL repo
yum_repository 'epel' do
  	description 'Extra Packages for Enterprise Linux'
  	mirrorlist 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-6&arch=$basearch'
  	gpgkey 'http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-6'
  	priority '2'
  	action :delete
end

# delete CentOS-Base repo
yum_repository 'CentOS-Base' do
  	action :delete
end

# delete CentOS-Debuginfo repo
yum_repository 'CentOS-Debuginfo' do
  	action :delete
end

# delete CentOS-Media repo
yum_repository 'CentOS-Media' do
  	action :delete
end

# delete CentOS-Vault repo
yum_repository 'CentOS-Vault' do
  	action :delete
end
