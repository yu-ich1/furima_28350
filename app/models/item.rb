class Item < ApplicationRecord
    extend ActiveHash::Associations::ActiveRecordExtensions
    #  belongs_to_active_hash :category_id

    has_one_attached :image
    belongs_to :user

    with_options presence: true do
        validates :product_name, :explanation, :product_price, :image
        validates :category_id, :product_status_id, :shipping_charges_id, :shipping_origin_id, :date_of_shipment_id, numericality: { other_than: 1 }
    end
end
