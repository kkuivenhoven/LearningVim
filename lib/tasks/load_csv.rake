require 'csv'
namespace :load_csv do

  desc "TODO"
  task :import_sales => :environment do
		csv_text = File.read(Rails.root.join('1000SalesRecords.csv'))
		csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
		csv.each do |row|
			s = Sale.new
			s.region = row['region']
			s.country = row['country']
			s.item_type = row['item_type']
			s.sales_channel = row['sales_channel']
			s.order_priority = row['order_priority']
			s.order_date = Time.strptime(row['order_date'], "%m/%d/%Y")
			s.order_id = row['order_id']
			s.ship_date = Time.strptime(row['ship_date'], "%m/%d/%Y")
			s.units_sold = row['units_sold']
			s.unit_price = row['unit_price']
			s.unit_cost = row['unit_cost']
			s.total_revenue = row['total_revenue']
			s.total_cost = row['total_cost']
			s.total_profit = row['total_profit']
			s.save
		end
  end

end
