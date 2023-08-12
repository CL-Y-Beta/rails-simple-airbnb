# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Clearing database.."

Listing.delete_all

puts "Creating flats..."
40.times do
  Listing.create!(
    name: Faker::Address.street_name,
    address: Faker::Address.full_address,
    description: Faker::Lorem.sentence(word_count: rand(15..40)),
    price_per_night: rand(45..1000),
    number_of_guests: rand(0..8),
    picture: 'https://images.unsplash.com/photo-1554995207-c18c203602cb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'
  )
end

puts "Done!"
