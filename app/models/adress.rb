class Adress < ApplicationRecord
  # belongs_to_active_hash :birthplace

  belongs_to :item, optional: true
  belongs_to :user, optional: true

  with_options presence: true do
    validates :postal_number, :municipality, :house_number, :phone_number
    validates :birthplace_id, numericality: { other_than: 1 }
  end
end
