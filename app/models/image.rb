class Image < ApplicationRecord
  belongs_to :hotel

  validates :name, presence: true,
    length: {maximum: Settings.image.name.max_length}
  validates :hodel, :image, presence: true
end
