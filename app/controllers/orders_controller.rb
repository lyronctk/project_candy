class OrdersController < ApplicationController

  def home
  end

  def new
    @order = Order.new
  end
  
  def index
    @order = Order.all
  end
  
  def show
    @order = Order.find(params[:id])
  end
  
  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to orders_complete_url
    else
      render 'new'
    end
  end
  
  def destroy
    puts 'GOT TO DESTROY '
    Order.find(params[:id]).destroy
    flash[:success] = "Order deleted"
    redirect_to orders_url
  end
  
  private
  
    def order_params
      params.require(:order).permit(:nameFirst, :nameLast, :email, :address, :phone, :alternatePhone, :addressLine2, :addressLine3, :city, :state, :zipCode)
    end
end
