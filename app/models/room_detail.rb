class RoomDetail < ApplicationRecord
  belongs_to :bill
  belongs_to :hotel
  has_many :room_type_services, as: :priceable

  validates :hotel, :image, presence: true
  validates :arceage, :room_number, presence: true,
    numericality: {greater_than_or_equal_to:
      Settings.room_detail.arceage.min_length}
end
