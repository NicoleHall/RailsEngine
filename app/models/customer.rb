class Customer < ActiveRecord::Base
  has_many :invoices
  has_many :transactions, through: :invoices

  # def find_single_customer
  #   respond_with Customer.find_by(customer_params)
  # end

end
