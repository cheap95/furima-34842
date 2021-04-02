class BuyersController < ApplicationController
    def index
        @items= Item.find(params[:item_id])
        @buyer_order = BuyerOrder.new
    end
    
    def create
      @buyer_order = BuyerOrder.new(buyer_order_params)
        @buyer = item.find(params[:item_id])
    if  @buyer.valid?
        @buyer.save
        redirect_to root_path
    else
        render :index
    end

    end

end

private
def buyer_order_params
    params.require(:buyer_order).permit(:prefecture, :city, :address, :post_code, :phone_number, :building).merge(user_id: current_user.id)
  end 