When(/^I go to the homepage$/) do
  visit root_path
end

Then(/^I should see the app name$/) do
  expect(page).to have_content("Photogram")
end

Then(/^I should see a new post button$/) do
  expect(page).to have_link 'New Post'
end
