require 'faker'

case Rails.env
  when "development"
  5.times do |i|
    restaurant = Restaurant.create!(
      name: Faker::Restaurant.name,
      address: Faker::Address.street_address,
      phone_number: Faker::PhoneNumber.phone_number,
      category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    )
    5.times do
      Review.create!(
        rating: rand(0..5),
        content: Faker::Movies::BackToTheFuture.quote,
        restaurant: restaurant
      )
    end
  end
end



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
