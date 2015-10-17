class ServingPincode < ActiveRecord::Base
	validates :vendor_id ,presence: true
end
