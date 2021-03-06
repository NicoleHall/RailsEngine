class Api::V1::Invoices::MerchantsController < Api::ApiController

  respond_to :json

  def show
    respond_with Invoice.find_by(id: params[:invoice_id]).merchant
  end
end
