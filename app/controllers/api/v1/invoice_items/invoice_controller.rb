class Api::V1::InvoiceItems::InvoiceController < Api::ApiController

  respond_to :json

  def show
    respond_with InvoiceItem.find_by(params[:id]).invoice
  end

end
