class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :post

  validates :thoughts, length: { minimum: 3 }
end
