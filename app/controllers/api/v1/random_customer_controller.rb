class Api::V1::RandomCustomerController < Api::ApiController

 respond_to :json

  def show
    respond_with Customer.order("RANDOM()").first
  end

end
