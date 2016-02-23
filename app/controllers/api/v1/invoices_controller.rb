class Api::V1::InvoicesController < Api::ApiController

 respond_to :json

  def index
    respond_with @invoices = Invoice.all
  end

  def show
    respond_with Invoice.find_by(id: params[:id])
  end

end
