class Adress < ApplicationRecord
  # belongs_to_active_hash :birthplace

  belongs_to :item, optional: true
  belongs_to :user, optional: true

  with_options presence: true do
    validates :municipality, :house_number
    validates :birthplace_id, numericality: { other_than: 1 }
    validates :phone_number, numericality: { less_than_or_equal_to: 11, message: "Phone_number is too short (minimum is 11 characters)"}
    validates :postal_number, format: { with: /\A\d{3}[-]\d{4}\z/, message: "is invalid. Include hyphen(-)"}
  end
end
