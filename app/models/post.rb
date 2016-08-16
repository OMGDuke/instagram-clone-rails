class Post < ApplicationRecord

  has_many :comments, dependent: :destroy

  belongs_to :user

  validates :title, length: { minimum: 3 }, uniqueness: true

  def belongs_to_user?(user)
    self.user_id == user.id
  end
end
