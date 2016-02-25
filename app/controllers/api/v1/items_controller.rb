class Api::V1::ItemsController < Api::ApiController

 respond_to :json

  def index
    respond_with @items = Item.all
  end

  def show
    respond_with Item.find_by(id: params[:id])
  end

  def best_day
    item = Item.find_by(id: params[:id])
    respond_with item.best_day
  end
end
