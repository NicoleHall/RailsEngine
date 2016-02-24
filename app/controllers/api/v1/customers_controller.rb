class Api::V1::CustomersController < Api::ApiController

 respond_to :json

  def index
    respond_with @customers = Customer.all
  end

  def show
    respond_with Customer.find_by(id: params[:id])
  end

  def favorite_merchant
    respond_with Customer.find_by(id: params[:id]).favorite_merchant
  end

end
