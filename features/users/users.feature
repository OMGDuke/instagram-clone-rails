Feature: Correct Sign up links
As a User
I want to see the correct sign up/in buttons
So that I don't press the wrong button

Feature: Correct Sign out link
As a User
I want to see the correct sign out button
So that I don't press the wrong button

Background:
When I go to the homepage

Scenario: Correct Sign up links
Then I expect to see the right sign up links

Scenario: Correct Sign out links
And I click Sign Up
And I fill in my details
And I confirm my Sign Up
Then I expect to see the right Sign Out links
