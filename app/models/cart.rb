class Cart < ActiveRecord::Base
  has_many :cart_items, :dependent => :destroy
  has_many :products, :through => :cart_items, :order => :name

  def self.generate_token
    ActiveSupport::SecureRandom.hex(16)
  end
  
  # instance methods
  
  def sales_taxes
    @sales_taxes ||= products.map(&:rounded_tax).sum
  end
  
  def sub_total
    products.map(&:price).sum
  end
  
  def total
    products.map(&:price).sum + sales_taxes
  end
  
  def quantity_of(product)
    @quantity = cart_items.count(:conditions => {:product_id => product})
  end
  
  def total_item_price(product)
    product.price_with_tax * @quantity
  end

end
