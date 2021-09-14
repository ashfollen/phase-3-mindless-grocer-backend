puts "Deleting old data..."
Recipe.destroy_all
Market.destroy_all
Ingredient.destroy_all

puts "🌱 Seeding spices..."


puts "Creating Recipes"
# Use the recipe's name as the variable name 



puts "Creating Markets"
butcher = Market.create(name: "Butcher")
farmersmarket = Market.create(name: "Farmers Market")
baker = Market.create(name: "Baker")

puts "Creating Ingredients"
# use the ingredients name as the variable name



puts "✅ Done seeding!"
