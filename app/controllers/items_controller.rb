class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_item, only: [:edit, :update, :show, :destroy]
  before_action :move_item, only: [:edit, :update, :destroy]
  def index
    @items = Item.all.order('created_at DESC')
  end

  def new
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

  def show
    
    @comment = Comment.new
    @comments = @item.comments.includes(:user).order(created_at: :desc)
    if @comment.save
         redirect_to item_path
    end
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to item_path
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to root_path
  end

  private

  def item_params
    params.require(:item).permit(:image, :price, :name, :description, :condition_id, :category_id, :delivery_fee_id, :area_id,
                                 :delivery_day_id).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def move_item
      
    if @item.buyer.present? || current_user.id != @item.user_id
         redirect_to action: :index 
    end
  end
end
