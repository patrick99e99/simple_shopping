Feature:
	In order to demonstrate applying sales taxes to a shopping cart
	As an administrator
	I want to be able to add cart items to a cart and see the sales tax

	Scenario: Generating Products
		Given I am on the home page
		When there are no products
		Then I should see "There are no products"
		When I press "generate products"
		Then I should not see "There are no products"

	Scenario: Adding a product to the cart	
		Given there are products
		When I am on the home page
		When I press "add to cart"
		Then I should not see "Cart is empty"

	Scenario: Removing a product from the cart
		Given there are products
		When I am on the home page
		And I press "add to cart"
		And I press "[x]"
		Then I should see "Cart is empty"

	Scenario Outline: Calculating tax
		Given there are products
		When I am on the home page
		And I add "<product>" to my cart
		And I press "Calculate Sales Tax!"
		Then I should see "<price with tax>"

		Examples:
			| product						| price with tax	|

			| A haunted house				| $12.49			|
			| Humpty Dance Music CD			| $16.49			|
			| Chocolate Bar					| $0.85				|

			| Fancy Box of chocolates		| $10.50			|
			| Fancy Deluxe Purfume			| $54.65			|

			| Fancy Purfume					| $32.19			|
			| Non-fancy Purfume				| $20.89			|
			| Headache Pills				| $9.75				|
			| Fancy Box of wine chocolates	| $11.85			|