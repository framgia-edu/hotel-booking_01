class Image < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :hotel

  validates :name, presence: true,
    length: {maximum: Settings.image.name.max_length}
  validates :hotel, :image, presence: true
end
