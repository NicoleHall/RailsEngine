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

  def revenue_for_single_merchant(params)

    if params["date"]

      invoices.successful_transactions
      .where(created_at: params[:date])
      .joins(:invoice_items)
      .sum("unit_price * quantity").to_f / 100

    else
    invoices.successful_transactions.joins(:invoice_items).sum("unit_price * quantity").to_f / 100
   end
  end

  def self.revenue_for_all_merchants_by_date(date)
    invoices = Merchant.all.flat_map { |merchant| merchant.invoices.where(created_at: date) }

    invoice_items = invoices.flat_map {|i| i.invoice_items}

    invoice_items.reduce(0) { |sum, invoice_item| sum + invoice_item.revenue}.to_s
  end

  def self.revenue_for_all_merchants_by_quantity
    Merchant.all.map do |the_one|
      invoices_for_the_one = the_one.invoices
      ii_for_the_one = invoices_for_the_one.flat_map {|invoice| invoice.invoice_items}
      total_rev_for_the_one = ii_for_the_one.map { |ii| ii.revenue }.reduce(:+)
      {id: the_one.id, name: the_one.name, value: total_rev_for_the_one}
    end

  end

end
