# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'french' }
pizza_east =  {name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian' }
pizza_west =  { name: 'Pizza West', address: '79A Shoreditch High St, London E1 6PQ', category: 'italian' }
the_big_plant =  { name: 'The Big Plant', address: '83 Neustrasse, Köln', category: 'chinese' }
grill_kingdom =  { name: 'Grill Kingdom', address: '45 Rue des Quais, Liege', category: 'belgian' }

[dishoom, pizza_east, pizza_west, the_big_plant, grill_kingdom].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
