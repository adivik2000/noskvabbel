Feature: Manage Users with groups
  In order to use the application
  As a group manager
  I want to add and delete other members

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