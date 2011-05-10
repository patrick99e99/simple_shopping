class ProductsController < ApplicationController
  
  def create
    Product.generate
    
    redirect_to store_path
  end

end
