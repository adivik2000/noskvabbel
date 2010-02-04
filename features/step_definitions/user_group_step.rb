Given /^(.+) is another user$/ do |username|
    User.create!(:username              => username,
               :email                 => "#{username}@zlab.fr",
               :password              => username,
               :password_confirmation => username
               )
end

When /^I select the user (.*)$/ do |username|
  select username, :from => "user[#{username}]"
end