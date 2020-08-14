FactoryBot.define do
  factory :item do
    product_name              { 'sushi' }
    explanation               { 'aaaaaa' }
    product_price             { '500' }
    category_id               { 'メンズ' }
    product_status_id          { '未使用に近い' }
    shipping_charges_id        { '着払い（購入者負担）' }
    shipping_origin_id         { '宮城県' }
    date_of_shipment_id          { '1〜2日で発送' }

    association :user
  end
end
