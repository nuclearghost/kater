# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

roles = Role.create([{name: 'admin'}, {name: 'owner'}])

users = User.create([{email: 'admin@admin.com', password: '12345678', name: 'Admin'}, {email: 'owner@owner.com', password: '12345678', name: 'The owner'}])

users.first.roles << roles.first
users.last.roles << roles.last

categories = Category.create([
	{name: 'Appetizer'},
	{name: 'Entree'},
	{name: 'Dessert'},
	{name: 'Side'}
	])

restaurants = Restaurant.create([
	{name: 'Au Cheval', address: '800 W Rabdolph St Chicago IL 60607', phone:'312.929.4580', email: 'info@aucheval.com', website:'aucehval.tumblr.com', user_id:'2'},
	{name: 'De Cero', address: '814 W Rabdolph St Chicago IL 60607', phone:'312.455.8114', email: 'info@decore.hellotacos.com', website:'decore.hellotacos.com', user_id:'2'},
	{name: 'Girl & The Goat', address: '809 W Rabdolph St Chicago IL 60607', phone:'312.492.6262', email: 'info@girlandthegoat.com', website:'girlandthegoat.com', user_id:'2'},
	{name: 'Grange Hall', address: '844 W Rabdolph St Chicago IL 60607', phone:'312.491.0844', email: 'info@grangehallburgerbar.com', website:'grangehallburgerbar.com', user_id:'2'},
	{name: 'Haymarket Brewery', address: '737 W Rabdolph St Chicago IL 60661', phone:'312.737.1234', email: 'info@haymarktbrewing.com', website:'haymarketbrewing.com', user_id:'2'},
	{name: 'Little Goat', address: '820 W Rabdolph St Chicago IL 60607', phone:'312.888.3455', email: 'info@littlegoatchicago.com', website:'littlegoatchicago.com', user_id:'2'},
	{name: 'Nellcote', address: '833 W Rabdolph St Chicago IL 60607', phone:'312.432.0500', email: 'info@nellcoterestaurant.com', website:'nellcoterestaurant.com', user_id:'2'},
	{name: 'Pork Chop', address: '941 W Rabdolph St Chicago IL 60607', phone:'312.733.9333', email: 'info@chicagoporkchop.com', website:'chicagoporkchop.com', user_id:'2'},
	{name: 'Sushi Dokku', address: '823 W Rabdolph St Chicago IL 60607', phone:'312.455.8238', email: 'info@sushidokku.com', website:'sushidokku.com', user_id:'2'},
	{name: 'G.E.B.', address: '841 W Rabdolph St Chicago IL 60661', phone:'312.888.2258', email: 'info@gebistro.com', website:'gebistro.com', user_id:'2'}
	])

dishes = Dish.create([
	{name: 'Bone Marrow', serves: '2', price: '19.99', restaurant_id: '1', category_id: '2', description: ''},
	{name: 'Fish Tacos', serves: '8', price: '39.99', restaurant_id: '2', category_id: '2', description: ''},
	{name: 'Pig Face', serves: '2', price: '29.99', restaurant_id: '3', category_id: '2', description: ''},
	{name: 'Chips and Dip', serves: '8', price: '19.99', restaurant_id: '4', category_id: '1', description: ''},
	{name: 'Chicken Wings', serves: '12', price: '29.99', restaurant_id: '5', category_id: '1', description: ''},
	{name: 'Smoked Fries', serves: '8', price: '19.99', restaurant_id: '6', category_id: '4', description: ''},
	{name: 'Bread', serves: '4', price: '6.99', restaurant_id: '7', category_id: '1', description: ''},
	{name: 'BBQ Ribs', serves: '2', price: '19.99', restaurant_id: '8', category_id: '2', description: ''},
	{name: 'Godzilla Roll', serves: '4', price: '19.99', restaurant_id: '9', category_id: '2', description: ''},
	{name: 'White Mousse', serves: '4', price: '9.99', restaurant_id: '10', category_id: '3', description: ''}
	])

pictures = Picture.create([
	{url: 'https://s3.amazonaws.com/kater.it/restaurants/aucheval.jpeg', restaurant_id: '1', dish_id: '1'},
	{url: 'https://s3.amazonaws.com/kater.it/restaurants/decero.jpeg', restaurant_id: '2', dish_id: '2'},
	{url: 'https://s3.amazonaws.com/kater.it/restaurants/girlandthegoat.jpeg', restaurant_id: '3', dish_id: '3'},
	{url: 'https://s3.amazonaws.com/kater.it/restaurants/grangehall.jpeg', restaurant_id: '4', dish_id: '4'},
	{url: 'https://s3.amazonaws.com/kater.it/restaurants/haymarket.jpeg', restaurant_id: '5', dish_id: '5'},
	{url: 'https://s3.amazonaws.com/kater.it/restaurants/littlegoat.jpeg', restaurant_id: '6', dish_id: '6'},
	{url: 'https://s3.amazonaws.com/kater.it/restaurants/nellcote.jpeg', restaurant_id: '7', dish_id: '7'},
	{url: 'https://s3.amazonaws.com/kater.it/restaurants/porkchop.jpeg', restaurant_id: '8', dish_id: '8'},
	{url: 'https://s3.amazonaws.com/kater.it/restaurants/sushidokku.jpeg', restaurant_id: '9', dish_id: '9'},
	{url: 'https://s3.amazonaws.com/kater.it/restaurants/geb.jpeg', restaurant_id: '10', dish_id: '10'},
	{url: 'https://s3.amazonaws.com/kater.it/dishes/bonemarrow.jpg', restaurant_id: '1', dish_id: '1'},
	{url: 'https://s3.amazonaws.com/kater.it/dishes/fishtaco.jpg', restaurant_id: '2', dish_id: '2'},
	{url: 'https://s3.amazonaws.com/kater.it/dishes/pigface.jpg', restaurant_id: '3', dish_id: '3'},
	{url: 'https://s3.amazonaws.com/kater.it/dishes/chipsanddip.jpg', restaurant_id: '4', dish_id: '4'},
	{url: 'https://s3.amazonaws.com/kater.it/dishes/chickenwings.jpg', restaurant_id: '5', dish_id: '5'},
	{url: 'https://s3.amazonaws.com/kater.it/dishes/smokedfries.jpg', restaurant_id: '6', dish_id: '6'},
	{url: 'https://s3.amazonaws.com/kater.it/dishes/bread.jpeg', restaurant_id: '7', dish_id: '7'},
	{url: 'https://s3.amazonaws.com/kater.it/dishes/ribs.jpg', restaurant_id: '8', dish_id: '8'},
	{url: 'https://s3.amazonaws.com/kater.it/dishes/godzilla.jpg', restaurant_id: '9', dish_id: '9'},
	{url: 'https://s3.amazonaws.com/kater.it/dishes/mousse.jpg', restaurant_id: '10', dish_id: '10'}
	])


