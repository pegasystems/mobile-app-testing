Feature: Login only feature

  Scenario: As a valid user I can log into my app
    Given the app has launched
    And I am on the Login page
    When I fill in credentials
    And I press Log In button
    Then I am on the Accounts page