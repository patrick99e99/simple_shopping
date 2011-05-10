class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery
  
  def get_cart_token
    session[:cart_token] ||= Cart.generate_token
  end

end
