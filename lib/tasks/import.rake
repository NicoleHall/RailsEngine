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
