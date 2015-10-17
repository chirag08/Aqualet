class CreateServingPincodes < ActiveRecord::Migration
  def change
    create_table :serving_pincodes do |t|
       t.integer "vendor_id"
       t.integer "pincode"
      t.timestamps null: false
    end
  end
end
