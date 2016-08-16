require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'is not valid with a title of less than three characters' do
    post = Post.new(title: "Cl")
    expect(post).to have(1).error_on(:title)
    expect(post).not_to be_valid
  end

  it "is not valid unless it has a unique title" do
    Post.create(title: "Sunny Day")
    post = Post.new(title: "Sunny Day")
    expect(post).to have(1).error_on(:title)
  end
end
