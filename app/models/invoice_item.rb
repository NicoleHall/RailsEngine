class InvoiceItem < ActiveRecord::Base
  belongs_to :item
  belongs_to :invoice

  def revenue
    (unit_price * quantity).to_f / 100
  end
end
