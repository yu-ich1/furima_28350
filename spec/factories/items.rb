FactoryBot.define do
  factory :item do
    product_name              { 'sushi' }
    explanation               { 'aaaaaa' }
    product_price             { '500' }

    association :user
  end
end
