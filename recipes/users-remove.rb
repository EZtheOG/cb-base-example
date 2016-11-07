# Remove old Users
# Add Logic for only_if exist so it runs once

user 'old_user' do
	action :remove
end
