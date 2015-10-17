class SubscriptionOrder < ActiveRecord::Base
	validates :s_order_id ,presence: true
end
