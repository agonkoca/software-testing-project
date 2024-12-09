Feature: Saucedemo User Login

  Background:
    Given the home page is opened

  Scenario Outline: Checking login case sensitivity
    Given the 'Username' field is filled with '<username>'
    And the 'Password' field is filled with '<password>'
    When the 'Login' button is clicked
    Then the '<errorMessage>' error message is shown
    Examples:
      | username      | password     | errorMessage                                                              |
      | STANDARD_USER | secret_sauce | Epic sadface: Username and password do not match any user in this service |
      | standard_user | SECRET_SAUCE | Epic sadface: Username and password do not match any user in this service |
      | STANDARD_USER | SECRET_SAUCE | Epic sadface: Username and password do not match any user in this service |