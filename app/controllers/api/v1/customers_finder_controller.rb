class Api::V1::CustomersFinderController < Api::ApiController

 respond_to :json

  def index
    respond_with Customer.where(customer_params)

  end

  def show
    respond_with Customer.find_by(customer_params)
  end

 end
