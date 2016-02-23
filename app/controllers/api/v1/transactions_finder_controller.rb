class Api::V1::TransactionsFinderController < Api::ApiController

 respond_to :json

  def index
    respond_with Transaction.where(transaction_params)
  end

  def show
    respond_with Transaction.find_by(transaction_params)
  end

end
