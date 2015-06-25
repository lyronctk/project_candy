class OrdersController < ApplicationController

  def home
  end

  def new
    @order = Order.new
  end
  
  def index
    @orders = Order.all
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
    Order.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  private
  
    def order_params
      params.require(:order).permit(:nameFirst, :nameLast, :email, :address, :phone, :alternatePhone, :addressLine2, :addressLine3, :city, :state, :zipCode)
    end
end
