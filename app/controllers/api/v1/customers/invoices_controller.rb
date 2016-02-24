class Api::V1::Customers::InvoicesController < Api::ApiController

  respond_to :json

  def index
    respond_with Customer.find_by(id: params[:customer_id]).invoices
  end

end
