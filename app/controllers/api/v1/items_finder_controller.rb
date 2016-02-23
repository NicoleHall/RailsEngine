class Api::V1::ItemsFinderController < Api::ApiController

 respond_to :json

  def index
    respond_with Item.where(item_params)
  end

  def show
    respond_with Item.find_by(item_params)
  end

end
