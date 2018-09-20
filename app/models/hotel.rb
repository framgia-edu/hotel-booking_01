class Hotel < ApplicationRecord
  belongs_to :user
  has_many :room_details
  has_many :images

  validates :name, presence: true,
    length: {maximum: Settings.hotel.name.max_length}
  validates :address, presence: true,
    length: {maximum: Settings.hotel.address.max_length}
  VALID_PHONE_REGEX = /\A^(01[2689]|09)[0-9]{8}$\z/
  validates :phone, presence: true,
    length: {maximum: Settings.hotel.phone.max_length},
    format: {with: VALID_PHONE_REGEX}
  validates :user, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
    length: {maximum: Settings.hotel.email.max_length},
    format: {with: VALID_EMAIL_REGEX}
end
