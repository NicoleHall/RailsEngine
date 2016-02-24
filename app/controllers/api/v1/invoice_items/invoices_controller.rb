class Api::V1::InvoiceItems::InvoicesController < Api::ApiController

  respond_to :json

    def show
      respond_with InvoiceItem.find_by(id: params[:invoice_item_id]).invoice
    end


end
