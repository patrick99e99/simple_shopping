module ProductsHelper

  def to_dollars(price)
    decimal_price = price * 0.01
    number_to_currency(decimal_price, :precision => 2)
  end

end
