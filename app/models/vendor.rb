class Vendor < ActiveRecord::Base
	validates :name ,presence: true
	validates :email ,presence: true 
	validates :pincode ,presence: true
	validates :address ,presence: true
	validates :password ,presence: true
end
