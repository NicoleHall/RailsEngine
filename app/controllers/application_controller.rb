class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  helper_method :format_unit_price
  protect_from_forgery with: :exception

  def customer_params
    params.permit(:id, :first_name, :last_name, :created_at, :updated_at)
  end

  def invoice_item_params
    format_unit_price
    params.permit(:id, :item_id, :invoice_id, :quantity, :unit_price, :created_at, :updated_at)
  end

  def invoice_params
    params.permit(:id, :customer_id, :merchant_id, :status, :created_at, :updated_at)
  end

  def item_params
    format_unit_price
    params.permit(:id, :name, :description, :unit_price, :merchant_id, :created_at, :updated_at)
  end

  def merchant_params
    params.permit(:id, :name, :created_at, :updated_at)
  end

  def transaction_params
    params.permit(:id, :invoice_id, :credit_card_number, :result, :created_at, :updated_at, :credit_card_expiration_date)
  end

  def format_unit_price
    if params[:unit_price]
      params["unit_price"] = BigDecimal.new(params["unit_price"]) * 100
    end
  end


end
