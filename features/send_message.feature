Feature: User can send a message

As a user
In order to send emails to my friends
I should be able to compose an email

Background: 
    Given I visit the "landing" page
    And The following users exist
        | name     | email                  | password      | password_confirmation |
        | Per Hegg | per_hegg@hotmail.com   | pereriksson   | pereriksson           |
        | Laura    | laura@gmail.com        | laurareale    | laurareale            |
    When I click on "Login"    
    And I fill in "Email" with "per_hegg@hotmail.com"
    And I fill in "Password" with "pereriksson"
    And I click on "Log in"
    Then I should see "Signed in successfully."

Scenario: User can send a message
    When I click on "Inbox"
    And I click on "Compose"
    Then I should select "Laura" from "Recipients"
    And I fill in "Subject" with "Tjena"
    And I fill in "conversation_body" with "God dag Laura"
    And I click on "Send Message"
    Then I should see "Your message was successfully sent!"