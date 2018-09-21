class RoomDetailService < ApplicationRecord
  belongs_to :room_detail
  has_many :room_type_services, as: :priceable

  validates :room_detail_id, :service_id, presence: true
end
