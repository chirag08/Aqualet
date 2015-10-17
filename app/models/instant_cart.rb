class InstantCart < ActiveRecord::Base
	validates :prod_id ,presence: true
end
