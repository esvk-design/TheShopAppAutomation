@checkOut @regression
Feature: Checkout

  Scenario Outline: As a user I checkout items in my shopping card
    Given I am on the happy shop landing page
    And I click on Login button
    Then I enter "admin" into username field
    And I enter "shopapp" into password field
    Then I click on login button
    And I land on Products page
    And I click on My Cart from navigation bar
    Then I enter "<email>" into email field
    And I enter "<name>" into name field
    And I enter "<cardNumber>" into card number field
    And I enter "<expDate>" into expiration date field
    And I enter "<cvc>" into cvs field
    Then I enter "<zipcode>" into zipCode field
    Then I click on submit payment button
    And I validate "<expectedText>" text is being displayed after clicking on submit button

    Examples:
    |email                |     name       |cardNumber        | expDate     | cvc   | zipcode | expectedText|
    |testUser@example.com | Test user      | 4242424242424242 | 04/26       |  111  | 75452   | Thank you for your purchase|
    |enssvk@example.com   | Enes Sevik     | 4242424242424242 | 02/23       |  222  | 45265   | Thank you for your purchase|
    |user123@example.com  | Sarah White    | 4242424242424242 | 06/27       |  123  | 11111   | Thank you for your purchase|


