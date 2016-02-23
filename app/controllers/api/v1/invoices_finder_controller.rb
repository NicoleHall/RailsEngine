class Api::V1::InvoicesFinderController < Api::ApiController

 respond_to :json

  def index
    find_all = Invoice.where(invoice_params)
    respond_with find_all
  end

  def show
    find_one = Invoice.find_by(invoice_params)
    respond_with find_one
  end

end
