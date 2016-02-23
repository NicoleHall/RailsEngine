class Api::V1::MerchantsFinderController < Api::ApiController

 respond_to :json

  def index
    find_all = Merchant.where(customer_params)
    respond_with find_all
  end

  def show
    find_one = Merchant.find_by(customer_params)
    respond_with find_one
  end

end
