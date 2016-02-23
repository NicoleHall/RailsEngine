class Api::V1::RandomInvoiceItemController < Api::ApiController

 respond_to :json

  def show
    respond_with InvoiceItem.order("RANDOM()").first
  end

end
