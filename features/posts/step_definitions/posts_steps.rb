When(/^I go to the homepage$/) do
  visit root_path
end

Then(/^I should see the app name$/) do
  expect(page).to have_content("Photogram")
end

Then(/^I should see the message no posts yet$/) do
  expect(page).to have_content("No Posts yet")
end

Then(/^I should see a new post link$/) do
  expect(page).to have_link 'New Post'
end

Then(/^I should see the post$/) do
  expect(page).to have_content('Sunny Day')
    expect(page).not_to have_content('No Posts yet')
end
