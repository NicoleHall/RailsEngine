class Api::V1::MerchantsController < Api::ApiController

 respond_to :json

  def index
    respond_with @merchants = Merchant.all
  end

  def show
    respond_with Merchant.find_by(id: params[:id])
  end

  def favorite_customer
    respond_with Merchant.find_by(id: params[:id]).favorite_customer
  end

  def customers_with_pending_invoices
    respond_with Merchant.find_by(id: params[:id]).customers_with_pending_invoices
  end

  def revenue
    revenue = Merchant
    .find_by(id: params[:id])
    .revenue_for_single_merchant(merchant_params)
    .to_s

    respond_with({revenue: revenue})
  end



end
