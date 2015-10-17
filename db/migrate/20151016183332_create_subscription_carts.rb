class CreateSubscriptionCarts < ActiveRecord::Migration
  def change
    create_table :subscription_carts do |t|
      t.integer "prod_id"
      t.integer "vendor_id"
      t.integer "customer_id"
      t.integer "daily_quantity"
      t.date "s_from"
      t.date "s_to"
      t.integer "gap"
      t.timestamps null: false
    end
  end
end
