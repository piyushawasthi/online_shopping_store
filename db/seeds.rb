# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create([{name: 'Men Shirt'}, {name: 'Men Paint'}, {name: 'Men Jeans'}, {name: 'Men Tee'}, {name: 'Women Shirt'}, {name: 'Women Paint'}, {name: 'Women Jeans'}, {name: 'Women Tee'}, {name: 'Accessories'}])
puts "Categories created"
Brand.create([{name: 'Levis'}, {name: 'Lee'}, {name: 'Peter England'}, {name: 'Jockey'}])
puts "Brand created"

User.create!(email: 'admin@gmail.com', password: 'admin@123', password_confirmation: 'admin@123', admin: true)
puts "admin user created"
User.create!(email: 'user1@gmail.com', password: 'user1@123', password_confirmation: 'user1@123')
puts "User 1 Created "
User.create!(email: 'user2@gmail.com', password: 'user2@123', password_confirmation: 'user2@123')
puts "User 2 Created"