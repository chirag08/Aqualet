class AddCustomers < ActiveRecord::Migration
  def down
  	add_column("customers","pincode",:string )
  	#add_column("customers","address",:string )
  	#add column("customers","address",:string )
  end

end
