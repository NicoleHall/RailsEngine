class Api::V1::MerchantsController < Api::ApiController

 respond_to :json

  def index
    respond_with @merchants = Merchant.all
  end

  def show
    respond_with Merchant.find_by(id: params[:id])
  end

  def favorite_customer
    respond_with Merchant.find_by(id: params[:id]).favorite_customer
  end

end

#
# GET /api/v1/merchants/:id/favorite_customer returns the customer who has conducted the most total number of successful transactions.
