class BuyersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :create]
  before_action :set_buyer, only: [:index, :create]
  before_action :move_buyer, only: [:index, :create]
  def index
    @buyer_order = BuyerOrder.new
  end

  def create
    @buyer_order = BuyerOrder.new(buyer_order_params)

    if @buyer_order.valid?
      pay_item
      @buyer_order.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def buyer_order_params
    params.require(:buyer_order).permit(:city, :address, :post_code, :phone_number, :building, :area_id).merge(
      user_id: current_user.id, item_id: params[:item_id], token: params[:token]
    )
  end

  def set_buyer
    @item = Item.find(params[:item_id])
  end

  def move_buyer
    if @item.buyer.present? || current_user == @item.user
        redirect_to root_path
    end
  end

  
  def pay_item
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']
    Payjp::Charge.create(
      amount: @item.price,
      card: buyer_order_params[:token],
      currency: 'jpy'
    )
  end
end
