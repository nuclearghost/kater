# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

roles = Role.create([{name: 'admin'}, {name: 'owner'}])

users = User.create([{email: 'admin@admin.com', password: '12345678', name: 'Admin'}, {email: 'owner@owner.com', password: '12345678', name: 'The owner'}])

restaurants = Restaurant.create([{name: 'Haymarket Brewery', address: '737 W Rabdolph St Chicago IL 60661', phone:'312.737.1234', email: 'info@haymarktbrewing.com', website:'haymarketbrewing.com', user_id:'2'},{name: 'Little Goat', address: '820 W Rabdolph St Chicaog IL 60661', phone:'312.888.3455', email: 'info@littlegoatchicago.com', website:'littlegoatchicago.com', user_id:'2'}])

