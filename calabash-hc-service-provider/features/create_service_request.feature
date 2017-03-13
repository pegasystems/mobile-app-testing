Feature: Create new Service Request

  Scenario: As a valid user I can login, create new Service Request and logout
    Given the app has launched
    And I am on the Log In page
    When I fill in credentials
    And I press Log In button
    Then I am on the Service page
    When I press plus icon
    And I choose Service Request
    Then I am on Service Request page
    When I choose Name
    And I provide Issue
    And I click Submit button
    Then I am on the Collect customer details page
    And I provide name
    And I provide phone number
    And I click Submit button
    Then I am on priority page
    When I choose priority
    And I click Submit button
    Then I am on fix description page
    When I provide fix description
    And I click Submit button
    Then I am on customer satisfaction page
    When I select NPS score
    And I click Submit button
    Then I am informed that case is Resolved-Completed
    When I press hamburger menu
    And I press Log Off
    Then I am on the Log In page