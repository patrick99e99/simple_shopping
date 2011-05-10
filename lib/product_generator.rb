class ProductGenerator

  def self.make_products_and_categories
    book     = Category.find_or_create_by_name('book')
    import   = Category.find_or_create_by_name('import')
    food     = Category.find_or_create_by_name('food')
    medicine = Category.find_or_create_by_name('medicine')
    other    = Category.find_or_create_by_name('other')

    Product.create(:name => "Chopin Waltzes", :categories => [book], :price => '1999', :img => 'chopin_waltzes')
    Product.create(:name => "Passage to India", :categories => [book], :price => '999', :img => 'passage_to_india')
    Product.create(:name => "A haunted house", :categories => [book], :price => '1249', :img => 'haunted_house')
    Product.create(:name => "A Picture of Dorian Gray", :categories => [book], :price => '899', :img => 'dorian_gray')
  
    Product.create(:name => "Cornish Hen", :categories => [food], :price => '1089', :img => 'cornish_hen')
    Product.create(:name => "Organic Chocolate Chip Cookies", :categories => [food], :price => '625', :img => 'organic_cookies')
    Product.create(:name => "Root Beer", :categories => [food], :price => '499', :img => 'root_beer')
    Product.create(:name => "Waffle Mix", :categories => [food], :price => '999', :img => 'waffle_mix')
    Product.create(:name => "Chocolate Bar", :categories => [food], :price => '85', :img => 'chocolate_bar')
  
    Product.create(:name => "Fancy Wine", :categories => [food, import], :price => '29999', :img => 'wine')
    Product.create(:name => "Fancy Purfume", :categories => [other, import], :price => '2799', :img => 'purfume_import')
    Product.create(:name => "Fancy Deluxe Purfume", :categories => [other, import], :price => '4750', :img => 'purfume_import_deluxe')
    Product.create(:name => "Fancy Cheese", :categories => [food, import], :price => '2599', :img => 'cheese')
    Product.create(:name => "Fancy Olive Oil", :categories => [food, import], :price => '1999', :img => 'olive_oil')
    Product.create(:name => "Fancy Box of chocolates", :categories => [food, import], :price => '1000', :img => 'box_of_chocolates')
    Product.create(:name => "Fancy Box of wine chocolates", :categories => [food, import], :price => '1125', :img => 'box_of_wine_chocolates')
  
    Product.create(:name => "Headache Pills", :categories => [medicine], :price => '975', :img => 'aspirin')
    Product.create(:name => "Depression Pills", :categories => [medicine], :price => '1899', :img => 'depression')  
    Product.create(:name => "ADD Pills", :categories => [medicine], :price => '2599', :img => 'add')
    Product.create(:name => "Stress Pills", :categories => [medicine], :price => '2599', :img => 'anxiety')

    Product.create(:name => "Non-fancy Purfume", :categories => [other], :price => '1899', :img => 'purfume')
    Product.create(:name => "LED Lamp", :categories => [other], :price => '19999', :img => 'led_lamp')  
    Product.create(:name => "Water Ozonator", :categories => [other], :price => '27999', :img => 'water_ozonator')
    Product.create(:name => "Humpty Dance Music CD", :categories => [other], :price => '1499', :img => 'humptydance')
    Product.create(:name => "Tron Soundtrack", :categories => [other], :price => '1499', :img => 'tron_soundtrack')
    Product.create(:name => "Genie Lamp", :categories => [other], :price => '99999999', :img => 'genie_lamp')
  end
  
end