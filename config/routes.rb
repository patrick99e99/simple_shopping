ActionController::Routing::Routes.draw do |map|

  map.resources :products
  map.resources :calculations
  map.resources :cart_items

  # singular routes
  map.resource  :store

  # named routes
  map.connect  ':controller/:action/:id'
  map.connect  ':controller/:action/:id.:format'
  map.connect  '/', :controller => :stores, :action => :show

end
