Feature: User sign-up
    As a user
    In order to use this messaging service
    I would like to sign-up

Background:
    Given I visit the landing page

Scenario: User visits page to Sign up 
    When I click on "Sign up" 
    And I fill in "Name" with "Bob"
    And I fill in "Email" with "bob@bobby.com"
    And I fill in "Password" with "0443431157"
    And I fill in "Password confirmation" with "0443431157"
    And I click on "Create"
    Then I should see "Welcome! You have signed up successfully."

Scenario: User visits page and enters incorrect Password Confirmation [SadPath]
    When I click on "Sign up" 
    And I fill in "Name" with "Bob"
    And I fill in "Email" with "bob@bobby.com"
    And I fill in "Password" with "0443431157"
    And I fill in "Password confirmation" with "044343115"
    And I click on "Create"
    Then I should see "Password confirmation doesn't match Password"

