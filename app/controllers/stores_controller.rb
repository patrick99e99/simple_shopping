class StoresController < ApplicationController

  def show
    @category_id = params[:category].to_i
    
    @products = if @category_id.zero? 
      Product.all
    else
      category = Category.find_by_id(@category_id)
      category.products if category
    end
    
    @cart = Cart.find_or_create_by_token(get_cart_token)
  end

end
