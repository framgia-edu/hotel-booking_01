class RoomDetail < ApplicationRecord
  belongs_to :bill, optional: true
  belongs_to :hotel
  has_many :room_type_services, as: :priceable

  validates :hotel, presence: true
  validates :arceage, :room_number, presence: true,
    numericality: {greater_than_or_equal_to:
      Settings.room_detail.arceage.min_length}
end
