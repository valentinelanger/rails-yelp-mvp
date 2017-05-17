# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
50.times do |i|
  restaurant = Restaurant.new(
    name: Faker::Company.name,
    address: "#{Faker::Address.street_name}, #{Faker::Address.city}",
    phone_number: Faker::PhoneNumber.phone_number,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample,
    image_url: "http://lorempixel.com/400/200?#{i}"
  )
  restaurant.save!
end

puts 'Finished!'
