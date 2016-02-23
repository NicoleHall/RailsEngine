class Api::V1::InvoiceItemsFinderController < Api::ApiController

 respond_to :json

  def index
    respond_with InvoiceItem.where(invoice_item_params)
  end

  def show
    respond_with InvoiceItem.find_by(invoice_item_params)
  end

end
