class ItemsController < ApplicationController
  # before_action :move_to_index, except: [:index]
  before_action :authenticate_user!, except: [:index]


  def index
    @items = Item.all.order("created_at DESC")
  end

  def new
    @item = Item.new
  end

  def create
   @item = Item.new(item_params)
    if @item.save
      redirect_to items_path(@item)
    else
      render :new
    end

    def price
      @item = Item.new
      item = Item.find(params[:id])
      
      

      render json: { post: item }
    end

  end

  private
  def item_params
    params.require(:item).permit(:image, :product_name, :explanation, :product_price, :category_id, :product_status_id, :shipping_charges_id, :shipping_origin_id, :date_of_shipment_id).merge(user_id: current_user.id)

  end



  # def move_to_index
  #   redirect_to action: :index unless user_signed_in?
  #    end

end