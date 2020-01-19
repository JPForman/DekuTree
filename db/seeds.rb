# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

50.times do |index|
  Product.create!(name: Faker::Dessert.variety, cost: (rand 1000), country_of_origin: Faker::Address.country)


end
p "Created #{Product.count} products"



Review.destroy_all

250.times do |index|
  Review.create!(title: Faker::Coffee.notes, author: Faker::Science.scientist , content_body: Faker::Lorem.characters(number: (rand 50...250)), rating: (rand 0...5), product_id: Product.all.ids.sample)
end
p "Created #{Review.count} reviews"
