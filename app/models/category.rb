class Category < ApplicationRecord
  has_many :posts

  validates :name, presence: true,
    length: {maximum: Settings.category.name.max_length}
end
