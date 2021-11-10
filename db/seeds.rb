# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."
flat1 = { name: 'Light & Spacious Garden Flat London', address: '10 Clifton Gardens London W9 1DT', description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory', price_per_night: 75, number_of_guests: 3 }
flat2 = { name: "Simple flat next to station", address: "56A Shoreditch High St, London E1 6PQ", description: 'This is a simple flat for people who do not want to spent too much money on accomodation, very nicely situated in the center of Londen', price_per_night: 20, number_of_guests: 2 }
flat3 = { name: "Cozy on the countryside", address: "Naamsesteenweg 63 3000 Leuven", description: 'this is a cosy flat for people who like get away from the rush of everyday life, stove is included!', price_per_night: 70, number_of_guests: 4 }
flat4 = { name: "Small flat for people who like to party", address: "7 Boundary St, London E2 7JE", description: 'This flat is very small and does not have any supplies for cooking. It is ideal if you are just looking for a place to stay after a long night of drinking.', price_per_night: 5, number_of_guests: 2 }

[flat1, flat2, flat3, flat4].each do |attributes|
  restaurant = Flat.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
