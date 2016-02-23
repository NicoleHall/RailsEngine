class Api::V1::RandomTransactionController < Api::ApiController

 respond_to :json

  def show
    respond_with Transaction.order("RANDOM()").first
  end

end
