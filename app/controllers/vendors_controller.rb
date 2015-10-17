class VendorsController < ApplicationController
  def show
  	@vendor = Vendor.find(params[:id])
  end

  def new
  	@vendor = Vendor.new
  end

  def create
  	@vendor = Vendor.new(cust_params)
  		if @vendor.save
  			puts "Success"
  		else
  			render 'new'
  	    end
    end
  end

def cust_params
      params.require(:vendor).permit(:name, :pincode, :email, :password, :address)
   end
