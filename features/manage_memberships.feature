Feature: A user manages his memberships
  In order to use deal with groups
  As a user
  I want to update my memberships of the groups I'm in


Feature: A user manages the memberships related to the groups he owns
  In order to rule groups
  As a user
  I want to add, remove and update memberships to the groups I own


  Scenario: Add members
	Given I am logged in as zifro
		And I belong to groups named "My life with Laetitia"
    And gincy is another user
  When I go to the list of groups
  	And I follow "My life with Laetitia"
    And I follow "Add a member"
    And I select the user gincy
    And I press "Add"
  Then I should see "My life with Laetitia"
    And I should see "gincy"


Feature: An administrator manages all the memberships
  In order to use the application
  As a user
  I want to add and delete other members