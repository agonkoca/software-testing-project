Feature: Restricted URL access

  Background:
    Given the home page is opened

  Scenario: User tries to access inventory without logging in
    When the user navigates directly to the inventory page without logging in
    Then the "Epic sadface: You can only access '/inventory.html' when you are logged in." error message is shown