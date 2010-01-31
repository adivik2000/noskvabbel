Given /^I am authenticated$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^I belong to groups named (.+)$/ do |names|
  names.split(',').each do |name|
    Group.create!(:name => name.gsub('"', ''), :users => [User.create!()])
  end
end