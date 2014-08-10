Feature: Add User's Ride info

  Scenario: If a Driver and a Rider are leaving from the same place, a match should appear
    Given I am on the adding info page
    When I fill in my info with name "Jesus" and "I need a ride, pretty please with sugar on top"
    And I click "Save Ride"
    Then I should see "Jesus" on the index page


    Given I am on the adding info page
    When I fill in my info with name "Maria" and "I am driving there and wouldn't mind giving someone a ride"
    And I click "Save Ride"
    Then I should see "Maria" on the index page

    And there should be a match