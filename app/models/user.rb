class User < ApplicationRecord
  has_many :posts
  has_many :contacts
  has_many :hotels
  has_many :bills
  enum user_type: {admin: 3, employee: 2, user: 1}

  validates :user_name, presence: true,
    uniqueness: {case_sensitive: Settings.user.user_name.case_sensitive},
    length: {maximum: Settings.user.user_name.max_length}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
    length: {maximum: Settings.user.email.max_length},
    format: {with: VALID_EMAIL_REGEX},
    uniqueness: {case_sensitive: Settings.user.email.case_sensitive}
  validates :name, presence: true,
    length: {maximum: Settings.user.name.max_length}
  VALID_PHONE_REGEX = /\A^(01[2689]|09)[0-9]{8}$\z/
  validates :phone, length: {maximum: Settings.user.phone.max_length},
    format: {with: VALID_PHONE_REGEX}
  has_secure_password
  validates :password, presence: true, allow_nil: true,
    length: {minimum: Settings.user.password.min_length}
  validates :user_type, presence: true, inclusion: {in: user_types}
end
