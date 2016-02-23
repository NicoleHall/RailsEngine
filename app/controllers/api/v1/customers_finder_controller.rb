class Api::V1::CustomersFinderController < Api::ApiController

 respond_to :json

  def index
    find_all = Customer.where(customer_params)
    respond_with find_all
  end

  def show
    find_one = Customer.find_by(customer_params)
    respond_with find_one
  end

 end
