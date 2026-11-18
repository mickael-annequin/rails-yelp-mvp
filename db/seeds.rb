# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
roger = Restaurant.create!(
  name: "Chez Roger",
  address: "Chartres",
  phone_number: "02 37 26 81 36",
  category: "french"
)
picassiette = Restaurant.create!(
  name: "Picassiette",
  address: "Paris",
  phone_number: "01 10 90 89 75",
  category: "italian"
)
wok = Restaurant.create!(
  name: "Wok",
  address: "Nice",
  phone_number: "01 66 66 33 44",
  category: "chinese"
)

Restaurant.create!(
  name: "Sushi masta",
  address: "Lille",
  phone_number: "05 06 83 96 33",
  category: "japanese"
)


Review.create!(
  content: "Roger est très fort en frites",
  rating: 5,
  restaurant: roger
)

Review.create!(
  content: "Service rapide",
  rating: 4,
  restaurant: roger
)

Review.create!(
  content: "Service parfait",
  rating: 5,
  restaurant: picassiette
)

Review.create!(
  content: "Il manquait l'huile piquante",
  rating: 2,
  restaurant: picassiette
)

Review.create!(
  content: "Buffet tout ce qu'il y a de plus classique",
  rating: 3,
  restaurant: wok
)

puts "Finished!"
