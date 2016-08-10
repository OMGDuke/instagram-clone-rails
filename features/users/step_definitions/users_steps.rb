# Scenario: Correct Sign up links
Then(/^I expect to see the right sign up links$/) do
  expect(page).to have_link('Sign in')
  expect(page).to have_link('Sign up')
  expect(page).not_to have_link('Sign out')
end

#Scenario: Correct Sign out links
And(/^I click Sign Up$/) do
  click_link('Sign up')
end
And(/^I fill in my details$/) do
  fill_in('Email', with: 'test@example.com')
  fill_in('Password', with: 'testtest')
  fill_in('Password confirmation', with: 'testtest')
end
And(/^I confirm my Sign Up$/) do
  click_button('Sign up')
end
Then(/^I expect to see the right Sign Out links$/) do
  expect(page).to have_link('Sign out')
  expect(page).not_to have_link('Sign in')
  expect(page).not_to have_link('Sign up')
end
