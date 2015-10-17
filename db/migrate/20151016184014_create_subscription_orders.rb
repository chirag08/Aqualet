class CreateSubscriptionOrders < ActiveRecord::Migration
  def change
    create_table :subscription_orders do |t|
      t.integer "s_order_id"
      t.date "timestamp"
      t.integer "prod_id"
      t.integer "vendor_id"
      t.integer "customer_id"
      t.integer "daily_quantity"
  	  t.date "s_from"
  	  t.date "s_to"
  	  t.integer "gap"
  	  t.integer "s_otp"
      t.integer "s_status"


      t.timestamps null: false
    end
  end
end
