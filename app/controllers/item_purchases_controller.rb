class ItemPurchasesController < ApplicationController
    before_action :authenticate_user!
    before_action :move_to_index

    def index
        @item = Item.find(params[:item_id])
    end

    def create
        @adress = Adress.new(adress_params)
        if @adress.save
          redirect_to index_path(@item.id)
        # else
        #   render :index(@item.id)
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
  end