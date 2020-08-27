require 'rails_helper'

RSpec.describe Order, type: :model do
  describe '#create' do
   before do
    @order = FactoryBot.build(:order)
end

it 'postal_numberが空では登録できないこと' do
  @order.postal_number = nil
  @order.valid?
  expect(@order.errors.full_messages).to include("Postal number can't be blank")
end

it 'birthplaceが空では登録できないこと' do
  @order.birthplace_id  = nil
  @order.valid?
  expect(@order.errors.full_messages).to include("Birthplace can't be blank")
end

it 'municipalityが空では登録できないこと' do
  @order.municipality = nil
  @order.valid?
 expect(@order.errors.full_messages).to include("Municipality can't be blank")
end

it 'house_numberが空では登録できないこと' do
  @order.house_number = nil
  @order.valid?
 expect(@order.errors.full_messages).to include("House number can't be blank")
end

it 'phone_numberが空では登録できないこと' do
  @order.phone_number = nil
  @order.valid?
  expect(@order.errors.full_messages).to include("Phone number can't be blank")
end

it '郵便番号にはハイフンが必要であること（123-4567となる）' do
  @order.postal_number = "1234567"
  @order.valid?
  expect(@order.errors.full_messages).to include("Postal number is invalid. Include hyphen(-)")
end

it '電話番号にはハイフンは不要であること' do
  @order.phone_number = "090-1111-2222"
  @order.valid?
  expect(@order.errors.full_messages).to include("Postal number is invalid. Include hyphen(-)")
end

it '電話番号には11桁以内であること' do
  @order.phone_number = "090111111222"
  @order.valid?
  expect(@order.errors.full_messages).to include("Phone number Phone_number is too short (minimum is 11 characters)")
end

it 'トークンが空では登録できないこと' do
  @order.token = nil
  @order.valid?
  expect(@order.errors.full_messages).to include("Token can't be blank")
end

end
end