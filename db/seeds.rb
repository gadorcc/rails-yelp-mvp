# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

i = 0
5.times do
  i += 1
  puts "Creating restaurant #{i}"
  Restaurant.create(
    name: Faker::Creature::Dog.name,
    address: Faker::Address.street_name,
    phone_number: ,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  Review.create(
    rating: Rand(0..5),
    content:
  )
end
