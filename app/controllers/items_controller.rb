class ItemsController < ApplicationController

  before_action :move_to_index, expect: :index

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(name: items_params[:name], price: items_params[:price], user_id: current_user.id)
  end

  # ログインしていない時はトップへリダイレクトさせる(before_actionを使って)
    # 今のままだと直接URLに/items/newなど入力すると、
    # ログインなしでも登録ページにアクセスできてしまう。
  def move_to_index
    redirect_to items_path unless user_signed_in?
  end



  private
  def items_params
    params.require(:item).permit(:name, :price)
  end

end
