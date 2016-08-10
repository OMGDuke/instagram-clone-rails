Feature: Leave comment
As a User
I want to be able to leave a comment
So that I can interact with other users

Background:
When I go to the homepage

@post_added
Scenario: New Comment
And I click link Sunny Day
And I click link New comment
And I fill in comment details
And I click Leave comment
Then I see my comment
