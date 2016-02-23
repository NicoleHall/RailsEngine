class Api::V1::TransactionsController < Api::ApiController

 respond_to :json

  def index
    respond_with @transactions = Transaction.all
  end

  def show
    respond_with Transaction.find_by(id: params[:id])
  end

end
