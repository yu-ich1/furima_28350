require 'rails_helper'

 RSpec.describe Adress, type: :model do
 describe '#create' do
   before do
    @adress = FactoryBot.build(:adress)
   end

  it 'postal_numberが空では登録できないこと' do
    @adress.postal_number = nil
    @adress.valid?
    expect(@adress.errors.full_messages).to include("Postal_number can't be blank")
  end

  it 'birthplaceが空では登録できないこと' do
    @adress.birthplace  = nil
    @adress.valid?
    expect(@adress.errors.full_messages).to include("Birthplace  Select")
  end

  it 'municipalityが空では登録できないこと' do
   @adress.municipality = nil
   @adress.valid?
   expect(@adress.errors.full_messages).to include("Municipality can't be blank")
  end

  it 'house_numberが空では登録できないこと' do
   @adress.house_number = nil
   @Adress.valid?
   expect(@adress.errors.full_messages).to include("House_number can't be blank")
  end

  it 'phone_numberが空では登録できないこと' do
    @adress.product_status = nil
    @adress.valid?
    expect(@adress.errors.full_messages).to include("Phone_number can't be blank")
  end

  it '郵便番号にはハイフンが必要であること（123-4567となる）' do
    @adress.postal_number = "1234567"
    @adress.valid?
    expect(@adress.errors.full_messages).to include("is invalid. Include hyphen(-)")
  end

  it '電話番号にはハイフンは不要であること' do
    @adress.phone_number = "090-1111-2222"
    @adress.valid?
    expect(@adress.errors.full_messages).to include("Not include hyphen(-)")
  end

  it '電話番号には11桁以内であること' do
    @adress.phone_number = "090111111222"
    @adress.valid?
    expect(@adress.errors.full_messages).to include("Phone_number is too short (minimum is 11 characters)")
  end

  it 'トークンが空では登録できないこと' do
    @adress.token = nil
    @adress.valid?
    expect(@adress.errors.full_messages).to include("Token can't be blank")
  end

  end
 
end
