class BuyersController < ApplicationController
  def index
    @item = Item.find(params[:item_id])
    redirect_to root_path if @item.buyer.present? && user_signed_in?
    redirect_to root_path if current_user == @item.user

    @buyer_order = BuyerOrder.new
  end

  def create
    @item = Item.find(params[:item_id])
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
    params.require(:buyer_order).permit(:prefecture, :city, :address, :post_code, :phone_number, :building, :area_id).merge(
      user_id: current_user.id, item_id: params[:item_id], token: params[:token]
    )
  end

  def pay_item
    Payjp.api_key = 'sk_test_9089197d0eaab0d73de5d760'
    Payjp::Charge.create(
      amount: @item.price,
      card: buyer_order_params[:token],
      currency: 'jpy'
    )
  end
end
