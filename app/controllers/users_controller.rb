class UsersController < ApplicationController
  def new
    @user = User.new
  end

#   private

#   def user_params
#     params.require(:user).permit(:first_name, :family_name, :first_name_kana, :family_name_kana)
#   end
end
