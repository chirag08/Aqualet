class CreateMasterProductDetails < ActiveRecord::Migration
  def change
    create_table :master_product_details do |t|
      t.integer "prod_id"
      t.integer "price"
      t.integer "prod_type"
      t.string "company"
      t.integer "vendor_id"
      t.boolean "available"
      t.timestamps null: false
    end
  end
end
