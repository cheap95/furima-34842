class ItemsController < ApplicationController
  def index
    @item = Item.all
  end

  def create
    if @item = Item.create(item_params)
       @item.save
       redirect_to root_path
    #else
       #render :new
    end
  end
end
