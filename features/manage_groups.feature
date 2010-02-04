Feature: Manage Groups
  In order to share expenses
  As an authenticated user
  I want to show, create, update and delete groups
  
  Scenario: Groups List
	Given I am logged in as zifro
        And I belong to groups named "Stephan's birthday", "My life with Laetitia"
    When I go to the list of groups
    Then I should see "Stephan's birthday"
        And I should see "My life with Laetitia"

  Scenario: Create a group
    Given I am logged in as zifro
    When I go to the list of groups
        And I follow "Add a group"
        And I fill in "group[name]" with "My first group"
        And I press "Create"
    Then I should see "My first group"

  Scenario: Update a group
    Given I am logged in as zifro
        And I belong to groups named "Stephan's birthday"
    When I go to the list of groups
        And I follow "Stephan's birthday"
        And I follow "Update my group"
        And I fill in "group[name]" with "My life with Laetitia"
        And I press "Update"
    Then I should see "My life with Laetitia"

#  Scenario: Delete a group