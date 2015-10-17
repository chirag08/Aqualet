class CreateInstantCarts < ActiveRecord::Migration
  def change
    create_table :instant_carts  do |t|
      t.integer "prod_id"
      t.integer "vendor_id" 
      t.integer "customer_id"
      t.integer "quantity"
      t.date "ondate"
      t.timestamps null: false
    end
  end
end
