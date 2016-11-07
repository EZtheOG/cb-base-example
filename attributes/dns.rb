# DNS Attributes

if "#{node['ec2']['placement_availability_zone']}" == 'us-east-1a' or 'us-east-1b'
    default['system']['dns']['config']['aws_region'] = 'us-east-1'
    default['system']['dns']['config']['nameserver'] = '10.20.0.2'

elsif "#{node['ec2']['placement_availability_zone']}" == 'us-east-1c' or 'us-east-1d'
    default['system']['dns']['config']['aws_region'] = 'us-east-1'
    default['system']['dns']['config']['nameserver'] = '10.20.0.2'

elsif "#{node['ec2']['placement_availability_zone']}".chop == 'us-west-1'
    default['system']['dns']['config']['aws_region'] = 'us-west-1'
    default['system']['dns']['config']['nameserver'] = '10.1.0.2'
    
elsif "#{node['ec2']['placement_availability_zone']}".chop == 'us-west-2'    
    default['system']['dns']['config']['aws_region'] = 'us-west-2'
    default['system']['dns']['config']['nameserver'] = '10.3.0.2'    
else
    Chef::Log.warn("No resolver attr's set for this ENV.") 
end
