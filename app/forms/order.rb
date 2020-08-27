class Order
  include ActiveModel::Model
  attr_accessor :postal_number, :birthplace_id, :municipality, :house_number, :building_name, :phone_number, :item_id, :user_id, :token

  with_options presence: true do
    validates :municipality, :house_number, :building_name, :token
    validates :phone_number, length: { maximum: 11, message: "Phone_number is too short (minimum is 11 characters)"}
    validates :postal_number, format: { with: /\A\d{3}[-]\d{4}\z/, message: "is invalid. Include hyphen(-)"}
    validates :birthplace_id, numericality: { other_than: 1 }
  end

  def save
    @order = ItemPurchase.create(user_id: user_id, item_id: item_id)
    @address = Adress.create(postal_number: postal_number, birthplace_id: birthplace_id, municipality: municipality, house_number: house_number, building_name: building_name, phone_number: phone_number, item_id: item_id)

  end
end
