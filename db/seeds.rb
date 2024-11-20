# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
restaurants = ["Mcdonald", "Starbucks", "Subway", "Burger King", "KFC"]
addresses = ["111 Villeneuve", "222 Laurier", "333 Joliette", "444 Frontenac", "555 Place Des Arts"]
phone_numbers = ["+33 14521452", "+789 456 123", "+44 41741741", "+1 198745622", "+689 1478963"]
categories = %w[chinese italian japanese french belgian]

restaurants.each_with_index do |restaurant, index|
  r = Restaurant.new(
    name: restaurant,
    address: addresses[index],
    phone_number: phone_numbers[index],
    category: categories[index]
  )
  r.save
end
