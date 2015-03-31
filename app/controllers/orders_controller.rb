class OrdersController < ApplicationController
    
    def index
        @orders = Order.all
    end
    
    def new
        @order = Order.new
        @order.status = 'New'
        @order.save
        d = @order.id.to_s
        while d.length < 4 do
            d = "0" + d
        end
        @order.docnum = DODAAC + @order.created_at.to_date.strftime("%y%j").last(4) + d
        @order.save
        redirect_to orders_path
    end
    
    def show
        @order = Order.find(params[:id])
    end
    
    def create
       
    end
    
    def edit
        @order = Order.find(params[:id])
    end
    
    def destroy
        @order = Order.find(params[:id])
        @order.destroy
        redirect_to orders_path 
    end
    
    private
    
    def order_params
       params.require(:order).permit(:docnum, :status) 
    end
   
end
