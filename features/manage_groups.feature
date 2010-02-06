Feature: A user manage his own groups
  In order to share expenses
  As a user
  I want to create groups, list, update and delete them, and display one of them


  Scenario: Create a group
    Given I am logged in as zifro
    When I go to the list of groups
      And I follow "Add a group"
      And I fill in "group[name]" with "My first group"
      And I press "Create"
    Then I should see "My first group"


  Scenario: List the groups
		Given I am logged in as zifro
    	And I belong to groups named "Stephan's birthday", "My life with Laetitia"
    When I go to the list of groups
    Then I should see "Stephan's birthday"
      And I should see "My life with Laetitia"


  Scenario: Update a group
    Given I am logged in as zifro
      And I belong to groups named "Stephan's birthday"
    When I go to the list of groups
      And I follow "manage_stephan_s_birthday"
      And I fill in "group[name]" with "My life with Laetitia"
      And I press "Update"
    Then I should see "My life with Laetitia"


 Scenario: Delete a group
    Given I am logged in as zifro
        And I belong to groups named "Stephan's birthday"
    When I go to the list of groups
        And I follow "manage_my_life_with_laetitia"
        And I follow "Delete the group and all associated operation"
    Then I should see "Delete with success"
        And I am on the root page


  Scenario: Show a specific group
     Given I am logged in as zifro
        And I belong to groups named "Stephan's birthday"
     When I go to the list of groups
        And I follow "Stephan's birthday"
     Then I should see zifro
        And I should see "Les 10 dernières opérations enregistrées"
        And I should see "Indivisible"
        And I should see "Solde"


Feature: An administrator manages all the groups
  In order to keep things clean
  As an administrator
  I want to create, update, list and delete all the existing groups, and display one of them