class Post < ApplicationRecord
  belongs_to :category
  belongs_to :user

  scope :sort_desc, ->{order updated_at: :desc}
  validates :title, presence: true,
    length: {maximum: Settings.post.title.max_length}
  validates :content, :category, :user, presence: true
end
