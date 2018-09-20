class RoomTypeService < ApplicationRecord
  belongs_to :priceable, polymorphic: true

  validates :name, presence: true,
    length: {maximum: Settings.room_type_service.name.max_length}
  validates :priceable_id, presence: true
  validates :priceable_type, presence: true
end
