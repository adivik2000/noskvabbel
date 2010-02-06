Feature: A user manages the operations he does for groups
  In order to let everyone know I'm participating to the group life
  As a user
  I want to record, update and delete the operations I do for the groups I'm in


  Scenario: record an operation
	Given I am logged in as zifro
		And I belong to groups named "My life with Laetitia"
        And gincy is another user from the group "My life with Laetitia"
  When I go to the list of groups
  	And I follow "My life with Laetitia"
    And I follow "Add an operation"
    And I fill in "operation[name]" with "loyer"
    And I fill in "operation[amount]" with "600"
    And I press "Add"
  Then I should see "My life with Laetitia"
    And I should see "loyer"
    And I should see "300"
    And I should see "300"
    And I should see "Indivisible"
    And I should see "Solde"

  Scenario: update a recorded operation
	Given I am logged in as zifro
		And I belong to groups named "My life with Laetitia"
        And I record an operation  "loyer" of "600"
  When I go to the list of groups
  	And I follow "My life with Laetitia"
    And I follow "Modify_loyer"
    And I fill in "operation[name]" with "loyer from flat"
    And I fill in "operation[amount]" with "602"
    And I press "Add"
  Then I should see "My life with Laetitia"
    And I should see "loyer from flat"
    And I should see "301"
    And I should see "Indivisible"
    And I should see "Solde"

  Scenario: delete a recorded operation
	Given I am logged in as zifro
		And I belong to groups named "My life with Laetitia"
        And I record an operation  "loyer" of "600"
  When I go to the list of groups
  	And I follow "My life with Laetitia"
    And I follow "Delete_loyer"
  Then I should see "My life with Laetitia"
    And I shouldn't see "loyer"
    And I shouldn't see "300"
    And I should see "Indivisible"
    And I should see "Solde"

Feature: An administrator manages all the operations
  In order to house-keep the application
  As an administrator
  I want to add, remove and update operations