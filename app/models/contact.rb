class Contact < ApplicationRecord
  belongs_to :user, optional: true

  validates :title, :content, presence: true
  validates :name, presence: true,
    length: {maximum: Settings.contact.name.max_length}
  VALID_PHONE_REGEX = /\A^(01[2689]|09)[0-9]{8}$\z/
  validates :phone, presence: true,
    length: {maximum: Settings.contact.phone.max_length},
    format: {with: VALID_PHONE_REGEX}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
    length: {maximum: Settings.contact.email.max_length},
    format: {with: VALID_EMAIL_REGEX}
  validates :address, presence: true,
    length: {maximum: Settings.contact.address.max_length}
end
