Feature: App Name
As a User
I want to be greeted with the name of the site
So that I know I'm in the right place

Feature: No posts
As a User
I want to see a no posts message
So that I know the site hasn't been used yet

Feature: New Post link
As a User
I want to see an New Post button
So that I can create a new post

Feature: Adding a post
As a User
I want to be able to create a new post
So that I can share my content

Feature: Post added
As a User
I want to see the see created posts
So that I know they are being stored

Feature: View Post
As a User
I want to be able to view posts
So that I get all the detail

Background:
When I go to the homepage

Scenario: User sees the app name
Then I should see the app name

Scenario: User sees no posts message
Then I should see the message no posts yet

Scenario: User sees a new post link
Then I should see a new post link

Scenario: Adding a post
And I click the New Post link
And I fill in the post details
And I click Create Post
Then I should see the post name

@post_added
Scenario: Post has been added
Then I should see the post

@post_added
Scenario: View Post
And I click the post
Then I should see the post content
And I should be on the posts route
