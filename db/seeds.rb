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
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
end
5.times do
  i += 1
  puts "Creating reviews #{i}"
  Review.create(
    rating: rand(0..5),
    content: Faker::Quote.famous_last_words,
    restaurant_id: rand(1..5)
  )
end
