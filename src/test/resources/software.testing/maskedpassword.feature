Feature: Password Field Masking

  Background:
    Given the home page is opened

  Scenario: Password field should be masked
    Given the 'Password' field is filled with "Password123"
    Then the 'Password' field is of type "password"