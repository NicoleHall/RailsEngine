class RemoveItemIdFromInvoices < ActiveRecord::Migration
  def change
    remove_column :invoices, :item_id
  end
end
