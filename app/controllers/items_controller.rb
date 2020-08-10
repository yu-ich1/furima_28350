class ItemsController < ApplicationController
  # before_action :move_to_index, except: [:index]
  before_action :authenticate_user!, except: [:index]


  def index
  end

  def new
    
  end

  # def move_to_index
  #   redirect_to action: :index unless user_signed_in?
  #    end
end
