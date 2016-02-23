class Api::V1::InvoiceItemsController < Api::ApiController

 respond_to :json

  def index
    respond_with @invoice_items = InvoiceItem.all
  end

  def show
    invoice_item = InvoiceItem.find(invoice_item_params)
  end

end
