class OrdersController < ApplicationController
  def show
   
  end

  def new
  	@order = InstantOrder.new
  end

  def new_inst
  	@order = InstantOrder.new
  end

  def new_subs
  	@order = InstantOrder.new
  end
 
  def create
  
  end
end
