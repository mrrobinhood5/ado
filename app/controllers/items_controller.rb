class ItemsController < ApplicationController
    def new
        @order = Order.find(params[:order_id])
        @item = Item.new
    end
    
    def create
        @order = Order.find(params[:order_id])
        @order.items.create(item_params)
        
        redirect_to order_path(@order)
    end
    
    def destroy
        @item = Item.find(params[:id])
        @order_id = @item.order_id
        @item.destroy
        redirect_to order_path(@order_id)
    end
    
    private
    
    def item_params
        params.require(:item).permit(:nsn, :nomen, :order_id)
    end
    
end
