Feature: A user manages his memberships
  In order to use deal with groups
  As a user
  I want to update my memberships of the groups I'm in


  Scenario: leave a group
	Given I am logged in as zifro
		And I belong to groups named "My life with Laetitia"
        And I am not the group manager of the group "My life with Laetitia"
  When I go to the list of groups
  	And I follow "My life with Laetitia"
    And I press "Leave the group"
  Then I should see root page


Feature: A user manages the memberships related to the groups he owns
  In order to rule groups
  As a user
  I want to add, remove and update memberships to the groups I own


  Scenario: Add members
	Given I am logged in as zifro
		And I belong to groups named "My life with Laetitia"
        And I am the group manager of the group "My life with Laetitia"
        And gincy is another user
  When I go to the list of groups
  	And I follow "My life with Laetitia"
    And I press "Add a member"
    And I fill in "user[username]" with gincy
    And I press "Add"
  Then I should see "My life with Laetitia"
    And I should see "gincy"

  Scenario: Delete members
	Given I am logged in as zifro
		And I belong to groups named "My life with Laetitia"
        And I am the group manager of the group "My life with Laetitia"
        And gincy is another user from the group "My life with Laetitia"
  When I go to the list of groups
  	And I follow "My life with Laetitia"
    And I press "Delete a member"
    And I select gincy
    And I press "Delete"
  Then I should see "My life with Laetitia"
    And I should see "Delete with success"


  Scenario: give the lead to someone else
    Given I am logge in as zifro
        And I belong to group named "My life with Laetitia"
        And I am the group manager of the group "My life with Laetitia"
        And gincy is another user from the group "My life with Laetitia"
    When I go to the list of groups
        And I follow "manage_my_life_with_laetitia"
        And I check "gincy"
        And I press "Update"
    Then I should see "My life with Laetitia"


  Scenario: remove the lead from someone else
    Given I am logge in as zifro
        And I belong to group named "My life with Laetitia"
        And I am the group manager of the group "My life with Laetitia"
        And gincy is another user from the group "My life with Laetitia"
    When I go to the list of groups
        And I follow "manage_my_life_with_laetitia"
        And I uncheck "gincy"
        And I press "Update"
    Then I should see "My life with Laetitia"

Feature: An administrator manages all the memberships
  In order to use the application
  As a user
  I want to add and delete other members