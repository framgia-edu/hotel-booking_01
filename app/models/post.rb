class Post < ApplicationRecord
  belongs_to :category
  belongs_to :user

  delegate :name, to: :category, prefix: true
  delegate :name, to: :user, prefix: true

  validates :title, presence: true,
    length: {maximum: Settings.post.title.max_length}
  validates :content, :category, :user, presence: true
end
