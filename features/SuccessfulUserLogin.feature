Feature: Successful user login
  As a registered user
  I want to log in with my valid credentials
  So that I can access my account securely

  Scenario: User logs in with valid username and password
    Given the user is on the login page
    And the user has a valid account
    When the user enters a valid username
    And the user enters the correct password
    And the user clicks the login button
    Then the user is redirected to the dashboard
    And the welcome message is displayed
    And the user session is created

  Scenario: User logs in and remains signed in when remember me is selected
    Given the user is on the login page
    And the user has a valid account
    When the user enters a valid username
    And the user enters the correct password
    And the user selects the remember me option
    And the user clicks the login button
    Then the user is redirected to the dashboard
    And the user remains signed in on the next visit
