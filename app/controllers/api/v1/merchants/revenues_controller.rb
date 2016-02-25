class Api::V1::Merchants::RevenuesController < Api::ApiController
  respond_to :json

  def index
    revenue = Merchant.revenue_for_all_merchants_by_date(params["date"])
    respond_with ({total_revenue: revenue})
  end


end
