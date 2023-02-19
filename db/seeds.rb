# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
puts "cleaning up dB"
Flat.delete_all
puts "creating flats seeding dB"

10.times do
  Flat.create(
    name: Faker::Address.street_name,
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph,
    price_per_night: rand(50..500),
    number_of_guests: rand(1..6)
  )
end

puts "seeding dB is DONE"
