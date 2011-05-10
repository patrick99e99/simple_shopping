class Product < ActiveRecord::Base
  has_many :cart_items
  has_many :carts, :through => :cart_items
  
  has_many :categorizations
  has_many :categories, :through => :categorizations

  def self.generate
    ProductGenerator.make_products_and_categories
  end

  # instance methods
  
  def tax_amount
    case @category.name.to_sym
    when :book, :food, :medicine
      0
    when :import
      5
    when :other
      10
    end
  end
  
  def rounded_tax
    round_up_to_nearest_nickel(tax)
  end
  
  def tax
    categories.map do |@category|
      tax_amount * price / 100
    end.sum
  end
  
  def round_up_to_nearest_nickel(number)
    ((number / 5.0).ceil * 5)
  end
  
  def price_with_tax
    price + rounded_tax
  end
  
end
