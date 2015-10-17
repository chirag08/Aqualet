class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name , :limit=>50
      t.string :email
      t.string :password
      t.string :address
      
      t.timestamps null: false
    end
  end
end