class Api::V1::Merchants::ItemsController < Api::ApiController

  respond_to :json

  def index
    respond_with Merchant.find_by(id: params[:merchant_id]).items
  end

end
