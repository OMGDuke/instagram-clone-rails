require 'rails_helper'

RSpec.describe Comment, type: :model do
  it 'is not valid with a thought of less than three characters' do
    comment = Comment.new(thoughts: "Co")
    expect(comment).to have(1).error_on(:thoughts)
    expect(comment).not_to be_valid
  end
end
