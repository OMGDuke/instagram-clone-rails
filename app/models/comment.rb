class Comment < ApplicationRecord

  validates :thoughts, length: { minimum: 3 }
end
