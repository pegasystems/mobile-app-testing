Feature: First scenario for UplusBank

  Scenario: End to End test for user
    Given the app has launched
    And I am on the Login page
    When I fill in credentials
    And I press Log In button
    Then I am on the Accounts page
    When I tap on the first item in Credit Cards section
    Then I am on Transactions Page
    When I tap on first item in Credit Card Activity section
    Then I am on Transaction Details page
    When I tap Dispute Transaction button
    Then I am on Getting started page
    When I tap on Get started button
    Then I am on Reason for Dispute page
    When I choose Paid by Other Means and tap Next
    Then I am on Dispute Amount page
    When I leave the default amount and tap Next
    Then I am on Transaction date page
    When I tap on calendar icon
    Then Calendar is opened
    When I pick date and confirm and tap Next
    Then I am on Recurring bill page
    When I choose No and tap Next
    Then I am on Review & Sign page
    When I sign the signature tap Next
    Then I am on Dispute Transaction finish page
    And I see a success message
    When I tap Finish
    And I go back to Accounts page
    And I Sign Off
    Then I am on the Login page