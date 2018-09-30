class Category < ApplicationRecord
  has_many :posts

  delegate :count, to: :posts, prefix: true

  scope :sort_desc, ->{order updated_at: :desc}
  scope :sort_desc_by_post_count,
    ->{left_joins(:posts).group(:id).order("COUNT(posts.id) DESC")}
  scope :sort_name_alphabet_asc, ->{order name: :asc}
  validates :name, presence: true,
    length: {maximum: Settings.category.name.max_length}
end
