class Api::V1::Customers::TransactionsController < Api::ApiController

  respond_to :json

  def index
    respond_with Customer.find_by(id: params[:customer_id]).transactions
  end

end
