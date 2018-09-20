class Post < ApplicationRecord
  belongs_to :category
  belongs_to :user

  validates :title, presence: true,
    length: {maximum: Settings.post.title.max_length}
  validates :content, :category, :user, presence: true
end
