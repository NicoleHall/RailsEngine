class AddItemToInvoices < ActiveRecord::Migration
  def change
    add_reference :invoices, :item, index: true, foreign_key: true
  end
end
