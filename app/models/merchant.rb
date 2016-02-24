class Merchant < ActiveRecord::Base
  has_many :invoices
  has_many :items
  has_many :invoice_items, through: :invoices

  def favorite_customer
    Customer.find(invoices.successful_transactions.group(:customer_id).count.max_by { |k,v| v }.first)
  end

end
