Given /^I have an account with credentials ([^\/]+)\/(.+)$/ do |username, password|
  User.create!(:username              => username,
               :email                 => "#{username}@zlab.fr",
               :password              => password,
               :password_confirmation => password
  )
end

Given /^I am logged in as (.+)$/ do |username|
  User.create!(:username              => username,
               :email                 => "#{username}@zlab.fr",
               :password              => "tagada",
               :password_confirmation => "tagada"
  )
  visit "/"
  fill_in "user_session[username]", :with => username
  fill_in "user_session[password]", :with => "tagada"
  click_button "Go !"
end