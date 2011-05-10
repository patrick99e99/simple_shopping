class CartItemsController < ApplicationController
  
  def create
    product = Product.find(params[:product_id])
    
    cart = Cart.find_by_token(get_cart_token)
    cart_item = CartItem.create(:product => product)
    cart.cart_items << cart_item
    
    redirect_to store_path(:category => params[:category], 
                           :anchor => "product_#{product.id}")
  end
  
  def destroy
    cart_item = CartItem.find_by_id(params[:id])
    cart_item.destroy if cart_item
    
    redirect_to store_path(:category => params[:category]) 
  end
  
end