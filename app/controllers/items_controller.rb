class ItemsController < ApplicationController
  def index
     
  end
  def new

  end

  def create
    
  end

  def show
  end

  def edit
  end

  def update
  end
  def destroy
    log_out
    redirect_to root_path
  end

  private

  def _params
    #params.require(:item).permit(:)marge()
  end
end
