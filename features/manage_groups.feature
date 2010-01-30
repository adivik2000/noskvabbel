Feature: Manage Groups
  In order to share expenses
  As a authenticated user
  I want to create and manage groups
  
  Scenario: Groups List
		Given I am logged in as zifro
    And I belong to groups named "Stephan's birthday", "My life with Laetitia"
    When I go to the list of groups
    Then I should see "Stephan's birthday"
    And I should see "My life with Laetitia"
  
  # Scenario: Create Valid Article
  #   Given I have no articles
  #   And I am on the list of articles
  #   When I follow "New Article"
  #   And I fill in "Title" with "Spuds"
  #   And I fill in "Content" with "Delicious potato wedges!"
  #   And I press "Create"
  #   Then I should see "New article created."
  #   And I should see "Spuds"
  #   And I should see "Delicious potato wedges!"  
  #   And I should have 1 article