# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
if Product.count.zero?
  500.times do
    u = Product.create(
      productName: Faker::Name.name ,
      category: Faker::Name.name,
      releaseDate: Faker::Date.between(from: 4.days.ago, to: Date.today),
      price: Faker::Commerce.price
    )
    end
end
