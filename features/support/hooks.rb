Before('@post_added') do
  @post = Post.create(title: 'Sunny Day', description: 'It is Sunny')
end
