#Background
When(/^I go to the homepage$/) do
  visit root_path
end

#Scenario: User sees the app name
Then(/^I should see the app name$/) do
  expect(page).to have_content("Photogram")
end

#Scenario: User sees no posts message
Then(/^I should see the message no posts yet$/) do
  expect(page).to have_content("No Posts yet")
end

#Scenario: User sees a new post link
Then(/^I should see a new post link$/) do
  expect(page).to have_link 'New Post'
end

#Scenario: Adding a post
And(/^I click the New Post link$/) do
  click_link 'New Post'
end
And(/^I fill in the post details$/) do
  fill_in 'Title', with: 'Cloudy Day'
  fill_in 'Description', with: 'It\'s a bit cloudy'
end
And(/^I click Create Post$/) do
  click_button 'Create Post'
end
Then(/^I should see the post title$/) do
  expect(page).to have_content 'Cloudy Day'
  expect(page).not_to have_content 'No Posts Yet'
end

#Post has been added
Then(/^I should see the post$/) do
  expect(page).to have_content('Sunny Day')
  expect(page).not_to have_content('No Posts yet')
end

#View Post
And(/^I click the post$/) do
  click_link 'Sunny Day'
end
Then(/^I should see the post content$/) do
  expect(page).to have_content 'Sunny Day'
  expect(page).to have_content 'It is Sunny'
end
And(/^I should be on the posts route$/) do
  expect(current_path).to eq "/posts/#{@post.id}"
end

#Edit Post
And(/^I click the edit link$/) do
  click_link 'Edit Sunny Day'
end
And(/^I fill in the new post details$/) do
  fill_in 'Title', with: 'Rainy Day'
  fill_in 'Description', with: 'It\'s wet!'
end
And(/^I click Update Post$/) do
  click_button 'Update Post'
end
Then(/^I should see the new post details$/) do
  expect(page).to have_content 'Rainy Day'
  expect(page).to have_content 'It\'s wet!'
  expect(page).not_to have_content 'Sunny Day'
end
