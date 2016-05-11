# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

10.times do
  restaurant = Restaurant.new({
    name: Faker::Hipster.word,
    address: " #{Faker::Address.street_address}" + " #{Faker::Address.city}",
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    phone_number: Faker::PhoneNumber.cell_phone
  })
  restaurant.save
  3.times do
    review = Review.new({
      content: Faker::Hipster.sentence,
      rating: [0,1,2,3,4,5].sample,
      restaurant: restaurant
    })
    review.save
  end
end
