class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  #  belongs_to_active_hash :category_id

  has_one_attached :image
  belongs_to :user

  with_options presence: true do
    validates :product_name, :explanation, :image
    validates :category_id, :product_status_id, :shipping_charges_id, :shipping_origin_id, :date_of_shipment_id, numericality: { other_than: 1 }
    validates :product_price, numericality: { greater_than: 300, less_than_or_equal_to: 9_999_999, message: '価格の範囲は、¥300~¥9,999,999の間です' }
  end
end
