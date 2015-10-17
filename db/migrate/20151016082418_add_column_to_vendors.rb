class AddColumnToVendors < ActiveRecord::Migration
  def change
  	add_column(:vendors,:pincode,:string)
  end
end
