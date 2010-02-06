Feature: A user manages his account
  In order to use the application
  As a user
  I want to create an account (sign up), log in, log out, update my information and delete my account


  Scenario: Sign up
    Given I'm not logged in
    When I follow "Sign up ?"
      And I fill in "user[username]" with "gincy"
      And I fill in "user[email]" with "gincy@cartoni.fr"
      And I fill in "user[password]" with "cartoni"
      And I fill in "user[password_confirmation]" with "cartoni"
      And I press "Create"
    Then I should see "Bienvenue gincy :)"
  

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
	  Then I should see "Sign up ?"


	Scenario: Update
    Given I am logged in as zifro
      And there is no gincy
    When I follow "My account"
      And I fill in "user[username]" with "gincy"
      And I press "Save"
    Then I should see "Bienvenue gincy :)"


Scenario: Delete
    Given I am logged in as zifro
    When I follow "My account"
        And I press "Delete my account"
    Then I should see "Delete with success"


Feature: An administator manages all the users
	In order to house-keep the application
	As an administrator
	I want to log in, log out, update users' information and delete accounts
	
	
	
	