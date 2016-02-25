class Api::V1::Merchants::RevenuesController < Api::ApiController
  respond_to :json

  def index
    revenue = Merchant.revenue_for_all_merchants_by_date(params["date"])
    respond_with ({total_revenue: revenue})
  end

  def show
    respond_with Merchant.revenue_for_all_merchants_by_quantity.sort_by { |h| h[:value] }.reverse[0..(params['quantity'].to_i - 1)]
  end


end
