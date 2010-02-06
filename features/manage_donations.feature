Feature: A user gives money to someone in a group he's in
  In order to give money back to people in the same groups as me
  As a user
  I want to record I give money to someone, for a specific group

  Scenario: give money
    Given I'm logged in as zifro
      And I belong to groups named "Stephan's birthday"
      And gincy is another user from the group "Stephan's birthday"
   When I go to the list of groups
      And I follow "Stephan's birthday"
      And I follow "donate_to_gincy"
      And I fill in "donation[name]" with "for roses"
      And I fill in "donation[amount]" with "50"
      And I press "donate !"
    Then I should see "for the rose"
      And I should see "-50"
      And I should see "50"


Feature: An administrator manages all the donations
  In order to house-keep the application
  As an administrator
  I want to add, remove and update donations