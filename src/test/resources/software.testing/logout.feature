Feature: Saucedemo Logout

  Background:
    Given the home page is opened

  Scenario Outline: Logging out of SauceDemo
    Given the 'Username' field is filled with '<username>'
    And the 'Password' field is filled with '<password>'
    And the 'Login' button is clicked
    And the inventory page is opened
    When the 'Menu' button is clicked
    And the 'Logout' button is clicked
    Examples:
      | username                | password     |
      | standard_user           | secret_sauce |
      | problem_user            | secret_sauce |
      | performance_glitch_user | secret_sauce |
      | error_user              | secret_sauce |
      | visual_user             | secret_sauce |