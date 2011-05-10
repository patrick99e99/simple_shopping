When 'there are no products' do
  Product.all.length.should == 0
end

Given 'there are products' do
  Product.generate
  Product.all.length.should_not == 0
end

When /^I add "([^\"]*)" to my cart$/ do |name|
  cart = Cart.first
  cart.products << Product.find_by_name(name)
 
  # refresh page...
  visit store_url
end