class UsersController < ApplicationController
  def show
    # @items = Item.where(user_id: current_user.id)変更
    @user = User.find(current_user.id)
     # ログインしているユーザーを特定
  end

end
