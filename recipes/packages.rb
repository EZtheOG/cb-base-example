
# Array of System Packages to install
node['system']['pkg'].each do |pkg|
    package pkg do
        action :install
    end
end

# Array of Python Packages to install 
node['system']['python']['pkg'].each do |pkg|
    python_package pkg do
        action :install
    end
end
