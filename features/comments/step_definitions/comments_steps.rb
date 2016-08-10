#Scenario: New Comment
And(/^I click link Sunny Day$/) do
  click_link 'Sunny Day'
end
And(/^I click link New comment$/) do
  click_link 'New Comment'
end
And(/^I fill in comment details$/) do
  fill_in "Thoughts", with: "Nice picture!"
end
And(/^I click Leave comment$/) do
  click_button 'Leave Comment'
end
Then(/^I see my comment$/) do
  expect(current_path).to eq "/posts/#{@post.id}"
  expect(page).to have_content('Nice picture!')
end
