class CustomersController < ApplicationController
  def show
  	@customer = Customer.find(params[:id])
  end

  def new
  	@customer= Customer.new
  end

  def create
  	@customer = Customer.new(cust_params)
  		if @customer.save
  			log_in @customer
      		flash[:success] = "Welcome to the AquaCloud App!"
      		redirect_to @customer
  		else
  			render 'new'
  	    end
    end
 end
  
def cust_params
      params.require(:customer).permit(:name, :pincode, :email, :password, :address)
   end