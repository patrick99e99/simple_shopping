class Category < ActiveRecord::Base
  has_many :categorizations
  has_many :products, :through => :categorizations

  def self.for_select
    # temporarily create 'all' and add it as an option
    all.insert(0, new(:name => "all"))
  end
  
end
