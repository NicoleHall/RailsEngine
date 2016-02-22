require 'csv'

namespace :db do

    task :customers => :environment do
    counter = 0
    csv_data = File.read("#{Rails.root}/lib/assets/customers.csv")

    csv = CSV.parse(csv_data, :headers => true)
    csv.each do |row|
      customer = Customer.create!(row.to_hash)
      puts "there were errors" if customer.errors.any?
      counter += 1 if customer.persisted?
    end

    puts "Imported #{counter} customers"
  end
end

namespace :db do

  task :merchants => :environment do
    counter = 0
    csv_data = File.read("#{Rails.root}/lib/assets/merchants.csv")
    csv = CSV.parse(csv_data, :headers => true)
    csv.each do |row|
      merchant = Merchant.create!(row.to_hash)
      puts "there were errors with the merchant csv load" if merchant.errors.any?
      counter += 1 if merchant.persisted?
    end

    puts "Imported #{counter} merchants"
  end
end

namespace :db do

  task :items => :environment do
    counter = 0
    csv_data = File.read("#{Rails.root}/lib/assets/items.csv")
    csv = CSV.parse(csv_data, :headers => true)
    csv.each do |row|
      item = Item.create!(row.to_hash)
      puts "there were errors with the item csv load" if item.errors.any?
      counter += 1 if item.persisted?
    end

    puts "Imported #{counter} items"
  end
end

namespace :db do

  task :invoices => :environment do
    counter = 0
    csv_data = File.read("#{Rails.root}/lib/assets/invoices.csv")
    csv = CSV.parse(csv_data, :headers => true)

    csv.each do |row|
      invoice = Invoice.create!(row.to_hash)
      puts "there were errors with your invoice csv load" if invoice.errors.any?
      counter += 1 if invoice.persisted?
    end

    puts "Imported #{counter} invoices"
  end
end

namespace :db do

  task :transactions => :environment do
    counter = 0
    csv_data = File.read("#{Rails.root}/lib/assets/transactions.csv")
    csv = CSV.parse(csv_data, :headers => true)

    csv.each do |row|
      transaction = Transaction.create!(row.to_hash)
      puts "there were errors with your transaction csv load" if transaction.errors.any?
      counter += 1 if transaction.persisted?
    end

    puts "Imported #{counter} transactions"
  end
end

namespace :db do

  task :invoice_items => :environment do
    counter = 0
    csv_data = File.read("#{Rails.root}/lib/assets/invoice_items.csv")
    csv = CSV.parse(csv_data, :headers => true)

    csv.each do |row|
      invoice_item = InvoiceItem.create!(row.to_hash)
      puts "there were errors with your invoice_item csv load" if invoice_item.errors.any?
      counter += 1 if invoice_item.persisted?
    end

    puts "Imported #{counter} invoice_items"
  end
end
