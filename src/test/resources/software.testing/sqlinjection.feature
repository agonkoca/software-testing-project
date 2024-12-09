Feature: Saucedemo Incorrect Login

  Background:
    Given the home page is opened

  Scenario Outline: Incorrect login attempts
    Given the 'Username' field is filled with '<username>'
    And the 'Password' field is filled with '<password>'
    When the 'Login' button is clicked
    Then the '<errorMessage>' error message is shown
    Examples:
      | username                               | password        | errorMessage                                                              |
      | " OR ""="                              | " or ""="       | Epic sadface: Username and password do not match any user in this service |
      | admin OR 0=0                           | anything OR 1=1 | Epic sadface: Username and password do not match any user in this service |
      | admin OR 1=1 --                        | anything OR 1=1 | Epic sadface: Username and password do not match any user in this service |
      | admin UNION SELECT NULL, NULL, NULL -- | anything OR 1=1 | Epic sadface: Username and password do not match any user in this service |
      | admin AND 1=1                          | anything        | Epic sadface: Username and password do not match any user in this service |
      | admin; DROP TABLE users --             | anything        | Epic sadface: Username and password do not match any user in this service |