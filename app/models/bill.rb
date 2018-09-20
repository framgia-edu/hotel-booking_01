class Bill < ApplicationRecord
  belongs_to :user
  belongs_to :room_detail
  enum status: {check: 1, not_check: 0}

  validates :room_detail, :user, presence: true
  validates :status, presence: true, inclusion: {in: statuses}
  validates_datetime :checkout_at, after: :checkin_at
  validates_datetime :checkin_at, before: :checkout_at
  validates :customer_name, presence: true,
    length: {maximum: Settings.bill.customer_name.max_length}
  validates :customer_phone, presence: true,
    length: {maximum: Settings.bill.customer_phone.max_length}
  validates :customer_email, presence: true,
    length: {maximum: Settings.bill.customer_email.max_length}
  validates :room_number, presence: true,
    numericality: {only_integer: true,
                   greater_than_or_equal_to:
                    Settings.bill.room_number.min_length}
end
