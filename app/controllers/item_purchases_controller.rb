class ItemPurchasesController < ApplicationController
    before_action :authenticate_user!
    before_action :move_to_index
    before_action :set_item, only: [:index, :create]

    def index
    end

    def create
      @order = Order.new(order_params)
       if @order.valid?
        pay_item
        @order.save
        @item.update(sales_status:1)
        return redirect_to root_path
      else
        render 'index'
      end
      
    end

    private

    def adress_params
        permit.render(:adress).permit(:postal_number, :birthplace_id, :municipality, :house_number,
                                        :building_name, :phone_number,:item)
    end

    def move_to_index
      unless user_signed_in?
        redirect_to action: :index
      end
    end

  def order_params
    params.permit(:token,:postal_number, :birthplace_id, :municipality, :house_number,:building_name, :phone_number,:item_id).merge(user_id: current_user.id)
  end

  def pay_item
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
      Payjp::Charge.create(
      amount: @item.product_price,  
      card: order_params[:token],    
      currency:'jpy'                
    )
  end

  def set_item
    @item = Item.find(params[:item_id])
  end

end