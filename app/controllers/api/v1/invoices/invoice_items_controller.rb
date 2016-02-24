class Api::V1::Invoices::InvoiceItemsController < Api::ApiController

  respond_to :json

  def index
    respond_with Invoice.find_by(id: params[:invoice_id]).invoice_items
  end
end
