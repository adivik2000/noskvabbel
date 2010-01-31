Given /^I belong to groups named (.+)$/ do |names|
  names.split(',').each do |name|
    Group.create!(:name => name.gsub('"', ''), :users => [User.find_by_username('zifro')])
  end
end