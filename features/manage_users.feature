Feature: Manage Users
  In order to use the application
  As a user
  I want to create an account, log in, log out, update and delete my account
  
  Scenario: Log in
    Given I have an account with credentials zifro/pazzword
    When I go to the home page
		And I fill in "user_session[username]" with "zifro"
		And I fill in "user_session[password]" with "pazzword"
		And I press "Go !"
    Then I should see "Bienvenue zifro :)"

	  Scenario: Log out
	    Given I am logged in as zifro
	    When I go to the home page
			And I follow "Logout"
	    Then I should see "Nouveau compte ?"