class CreateInstantOrders < ActiveRecord::Migration
  def change
    create_table :instant_orders do |t|
      t.integer "i_order_id"
      t.date "timestamp"
      t.integer "prod_id"
      t.integer "vendor_id"
      t.integer "customer_id"
      t.integer "quantity"
      t.date "ondate"
      t.integer "i_otp"
      t.integer "i_status"

      t.timestamps null: false
    end
  end
end
