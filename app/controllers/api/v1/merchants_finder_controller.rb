class Api::V1::MerchantsFinderController < Api::ApiController

 respond_to :json

  def index
   respond_with Merchant.where(merchant_params)

  end

  def show
    respond_with Merchant.find_by(merchant_params)
  end

end
