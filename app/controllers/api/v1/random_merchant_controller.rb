class Api::V1::RandomMerchantController < Api::ApiController

 respond_to :json

  def show
    respond_with Merchant.order("RANDOM()").first
  end

end
