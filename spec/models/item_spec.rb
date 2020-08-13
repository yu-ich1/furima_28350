require 'rails_helper'

RSpec.describe Item, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  end


  it 'imageが空では登録できないこと' do
    @item.image = nil
    @item.valid?
    expect(@item.errors.full_messages).to include("No image can't be blank")
  end

  it 'product_nameが空では登録できないこと' do
    @item.product_name = nil
    @item.valid?
    expect(@item.errors.full_messages).to include("Product_name can't be blank")
  end

  it 'categoryが空では登録できないこと' do
   @item.category = nil
   @item.valid?
   expect(@item.errors.full_messages).to include("Category can't be blank")
  end

  it 'explanationが空では登録できないこと' do
   @item.explanation = nil
   @item.valid?
   expect(@item.errors.full_messages).to include("Explanation can't be blank")
  end

  it 'product_statusが空では登録できないこと' do
    @item.product_status = nil
    @item.valid?
    expect(@item.errors.full_messages).to include("Product_status can't be blank")
  end

  it 'shipping_chargesが空では登録できないこと' do
   @item.shipping_charges = nil
   @item.valid?
   expect(@item.errors.full_messages).to include("Shipping_charges can't be blank")
  end

  it 'Shipping_originが空では登録できないこと' do
   @item.Shipping_origin = nil
   @item.valid?
   expect(@item.errors.full_messages).to include("Shipping_origin can't be blank")
  end

  it 'date_of_shipmentが空では登録できないこと' do
    @item.date_of_shipment = nil
    @item.valid?
    expect(@item.errors.full_messages).to include("Date_of_shipment can't be blank")
   end

   it 'Product_priceが空では登録できないこと' do
    @item.Product_price = nil
    @item.valid?
    expect(@item.errors.full_messages).to include("Product_price can't be blank")
   end


end
end
