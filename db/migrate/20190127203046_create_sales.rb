class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.string :region
      t.string :country
      t.string :item_type
      t.string :sales_channel
      t.string :order_priority
      t.date :order_date
      t.integer :order_id
      t.date :ship_date
      t.integer :units_sold
      t.float :unit_price
      t.float :unit_cost
      t.float :total_revenue
      t.float :total_cost
      t.float :total_profit

      t.timestamps
    end
  end
end
