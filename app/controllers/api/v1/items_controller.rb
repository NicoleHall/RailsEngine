class Api::V1::ItemsController < Api::ApiController

 respond_to :json

  def index
    respond_with @items = Item.all
  end

  def show
    respond_with Item.find_by(id: params[:id])
  end


end
