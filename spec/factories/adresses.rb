FactoryBot.define do
  factory :adress do
    postal_number { '8620962' }
    birthplace_id { '北海道' }
    municipality { '熊本市' }
    house_number { '青山1-11' }
    building_name { '13' }
    phone_number { '09011112222' }

    association :item
  end
end
