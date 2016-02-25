class Item < ActiveRecord::Base
  has_many :invoice_items
  has_many :invoices, through: :invoice_items
  belongs_to :merchant

  def best_day
    invoices.successful_transactions.group(:item_id).count
  end

end
