class Merchant < ActiveRecord::Base

  has_many :invoices
  has_many :items
  has_many :invoice_items, through: :invoices

  def favorite_customer
    Customer.find(invoices.successful_transactions.group(:customer_id).count.max_by { |k,v| v }.first)
  end

  def customers_with_pending_invoices
    cust_ids = invoices.pending_invoices.pluck(:customer_id).uniq
    cust_ids.map { |id| Customer.find(id) }
  end

  def revenue_for_single_merchant
    invoices.successful_transactions.joins(:invoice_items).sum("unit_price * quantity").to_f / 100
  end

end
