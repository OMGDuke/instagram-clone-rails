Feature: Leave comment
As a User
I want to be able to leave a comment
So that I can interact with other users

Feature: Invalid Comment
As a User
I want to know if my comments are invalid
So I know why my comment didn't work

Background:
When I go to the homepage

@post_added
Scenario: New Comment
And I click link Sunny Day
And I click link New comment
And I fill in comment details
And I click Leave comment
Then I see my comment

@post_added
Scenario: Invalid Comment
And I click link Sunny Day
And I click link New comment
And I fill in comment details incorrectly
And I click Leave comment
Then I should see an error instead of the comment
