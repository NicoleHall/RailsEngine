class Api::V1::RandomItemController < Api::ApiController

 respond_to :json

  def show
    respond_with Item.order("RANDOM()").first
  end

end
