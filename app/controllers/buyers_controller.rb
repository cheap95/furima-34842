class BuyersController < ApplicationController
    def index
    end

    def new
        @buyer = Buyer.new

    end
    
    def create
      @buyer = Buyer.new(buyer_params)
    if  @buyer.valid?
        @buyer.save
        redirect_to root_path
    else
        render :new
    end

    end

end

private
def buyer_params
    params.require(:buyer).permit(:prefecture, :city, :address, :post_code, :phone_number, :image, :name, :price, :description, :condition_id, :category_id, :area_id, :delivery_fee_id, :delivery_day_id).merge(user_id: current_user.id, item_id: item.id)
  end