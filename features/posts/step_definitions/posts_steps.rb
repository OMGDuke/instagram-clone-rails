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
Then(/^I should see the post name$/) do
  expect(page).to have_content 'Cloudy Day'
  expect(page).not_to have_content 'No Posts Yet'
end

#Post has been added
Then(/^I should see the post$/) do
  expect(page).to have_content('Sunny Day')
  expect(page).not_to have_content('No Posts yet')
end
