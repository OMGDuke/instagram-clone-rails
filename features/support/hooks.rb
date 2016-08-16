Before('@post_added') do
  @post = Post.create(title: 'Sunny Day', description: 'It is Sunny')
end

Before('@sign_up') do
  visit root_path
  click_link 'Sign up'
  fill_in 'Email', with: 'test@test.com'
  fill_in 'Password', with: '123456'
  fill_in 'Password confirmation', with: '123456'
  click_button('Sign up')
end
