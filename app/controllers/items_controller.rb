class ItemsController < ApplicationController

  def index
    @item = Item.all.order("created_at DESC")
  end

  def  new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end
private
def item_params
  params.require(:item).permit(:user_id, :image, :price, :name, :description, :condition_id, :category_id, :delivery_fee_id, :area_id, :delivery_day_id).merge(user_id: current_user.id)
end
end
