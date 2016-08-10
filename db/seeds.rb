# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
Review.destroy_all

7.times do
  restaurant_params = {
    address: Faker::Address,
    phone_number: Faker::Base.numerify('+33(#) ## ## ## ##')
  }
  restaurant = Restaurant.create(restaurant_params)
  rand(0..5).times do
    review_params = {
      content: Faker::StarWars.quote,
      rating: rand(0..5)
    }
    review = Review.new(review_params)
    review.restaurant = restaurant
    review.save
  end
end
