require 'spec_helper'

describe Product do
  
  context "displaying product data" do
  
    before(:each) do
      @cart = Cart.create!
      @unit_price = 2000
      @quantity = 5
      @ducktales = Product.create!(:name => 'ducktales season one DVD', :price => @unit_price)

      @quantity.times do
        @cart.products << @ducktales
      end
    end
  
    it "should display the correct quantity number of a cart item" do
      @cart.quantity_of(@ducktales).should == @quantity
    end
    
    it "should display the correct total item price for duplicate products" do
      @cart.quantity_of(@ducktales).should == @quantity
      @cart.total_item_price(@ducktales).should == @quantity * @unit_price
    end
    
    
     context "calculating tax" do
     
       context "compute different taxes for different categories of products" do
     
         def setup_cart_with_item(*category_list)
           @cart = stub_model(Cart)

           categories = category_list.map {|c| stub_model(Category, :name => c.to_s)}
           
           product = stub_model(Product, :price => 1000)
           
           product.should_receive(:categories).and_return(categories)
           
           @cart.should_receive(:products).and_return([product])          
         end
         
         it "should add no tax on items that are tax exempt" do
           setup_cart_with_item(:food, :book)
     
           @cart.sales_taxes.should == 0
         end
       
         it "should add 10% on all taxable items" do
           setup_cart_with_item(:other)
         
           @cart.sales_taxes.should == 100
         end
         
         it "should add 5% on all items that are tax exempt but are imports" do
           setup_cart_with_item(:import, :food)
         
           @cart.sales_taxes.should == 50
         end
         
         it "should add 15% on all items that are non-tax exempt and are imports" do
           setup_cart_with_item(:import, :other)
         
           @cart.sales_taxes.should == 150
         end
       end
       
       it "should round the tax up the nearest 'nickel' as integer" do
         product = stub_model(Product)
         product.round_up_to_nearest_nickel(931).should == 935
       end

     end
  end
  
end