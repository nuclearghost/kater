# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Rails.env.production? do
	roles = Role.create([{name: 'admin'}, {name: 'owner'}])

	users = User.create([{email: 'admin@admin.com', password: '12345678', name: 'Admin'}, {email: 'owner@owner.com', password: '12345678', name: 'The owner'}])
end

restaurants = Restaurant.create([
	{name: 'Au Cheval', address: '800 W Rabdolph St Chicago IL 60607', phone:'312.929.4580', email: 'info@aucheval.com', website:'aucehval.tumblr.com', user_id:'2'},
	{name: 'De Cero', address: '814 W Rabdolph St Chicago IL 60607', phone:'312.455.8114', email: 'info@decore.hellotacos.com', website:'decore.hellotacos.com', user_id:'2'},
	{name: 'G.E.B.', address: '841 W Rabdolph St Chicago IL 60661', phone:'312.888.2258', email: 'info@gebistro.com', website:'gebistro.com', user_id:'2'},
	{name: 'Girl & The Goat', address: '809 W Rabdolph St Chicago IL 60607', phone:'312.492.6262', email: 'info@girlandthegoat.com', website:'girlandthegoat.com', user_id:'2'},
	{name: 'Grange Hall', address: '844 W Rabdolph St Chicago IL 60607', phone:'312.491.0844', email: 'info@grangehallburgerbar.com', website:'grangehallburgerbar.com', user_id:'2'},
	{name: 'Haymarket Brewery', address: '737 W Rabdolph St Chicago IL 60661', phone:'312.737.1234', email: 'info@haymarktbrewing.com', website:'haymarketbrewing.com', user_id:'2'},
	{name: 'Little Goat', address: '820 W Rabdolph St Chicago IL 60607', phone:'312.888.3455', email: 'info@littlegoatchicago.com', website:'littlegoatchicago.com', user_id:'2'},
	{name: 'Nellcote', address: '833 W Rabdolph St Chicago IL 60607', phone:'312.432.0500', email: 'info@nellcoterestaurant.com', website:'nellcoterestaurant.com', user_id:'2'},
	{name: 'Pork Chop', address: '941 W Rabdolph St Chicago IL 60607', phone:'312.733.9333', email: 'info@chicagoporkchop.com', website:'chicagoporkchop.com', user_id:'2'},
	{name: 'Sushi Dokku', address: '823 W Rabdolph St Chicago IL 60607', phone:'312.455.8238', email: 'info@sushidokku.com', website:'sushidokku.com', user_id:'2'}
	])

end