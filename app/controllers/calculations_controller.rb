class CalculationsController < ApplicationController
  
  def create
    @cart = Cart.find_by_token(get_cart_token)
  end
  
end
