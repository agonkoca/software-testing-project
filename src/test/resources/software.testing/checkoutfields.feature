Feature: Saucedemo Shopping

  Background:
    Given the home page is opened
    And the 'Username' field is filled with 'standard_user'
    And the 'Password' field is filled with 'secret_sauce'
    And the 'Login' button is clicked


  Scenario Outline: Attempting to buy an item wih incomplete checkout information
    Given the 'Sauce Labs Backpack' is added to the cart
    And the 'Cart' button is clicked
    And the 'Checkout' button is clicked
    And the 'First Name' field is filled with '<first_name>'
    And the 'Last Name' field is filled with '<last_name>'
    And the 'Zip Code' field is filled with '<zip_code>'
    When the 'Continue' button is clicked
    Then the '<checkoutErrorMessage>' checkout message is shown
    And the 'Cancel' button is clicked
    And the 'Remove' button is clicked

    Examples:
      | first_name | last_name | zip_code | checkoutErrorMessage           |
      |            |           |          | Error: First Name is required  |
      | Agon       |           |          | Error: Last Name is required   |
      | Agon       | Koca      |          | Error: Postal Code is required |
      | Agon       |           | 1111     | Error: Last Name is required   |
      |            | Koca      | 1111     | Error: First Name is required  |
      |            |           | 1111     | Error: First Name is required  |

