Feature: Login and logout feature

  Scenario: As a valid user I can login and logout
    Given the app has launched
    And I am on the Log In page
    When I fill in credentials
    And I press Log In button
    Then I am on the Service page
    # You can add your custom logic here
    When I press hamburger menu
    And I press Log Off
    Then I am on the Log In page