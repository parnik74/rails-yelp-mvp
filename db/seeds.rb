# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: 'belgian', phone_number: '+79090989359' }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian", phone_number: '+78457349579' }
teremok = { name: "Teremok", address: "18 Pushkin St, SPB", category: "french", phone_number: '+342348723684'}
burger_tsar =  { name: "Burger Tsar", address: "55A Booldeditch High St, London E1 6PQ", category: "japanese", phone_number: '+72836428374' }
itchiban =  { name: "Itchiban", address: "55A Booldeditch High St, Japan E1 6PQ", category: "japanese",  phone_number: '+374682376482'}

[ dishoom, pizza_east, teremok, burger_tsar, itchiban ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
