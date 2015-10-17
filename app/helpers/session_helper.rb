module SessionHelper

  
  def log_in(customer)
    session[:customer_id] = customer.id
  end
 def current_user
    @current_user ||= Customer.find_by(id: session[:customer_id])
  end
def logged_in?
    !current_user.nil?
  end

def log_out
    session.delete(:customer_id)
    @current_user = nil
  end
end
