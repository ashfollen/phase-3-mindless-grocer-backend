puts "Deleting old data..."
Recipe.destroy_all
Market.destroy_all
Ingredient.destroy_all

puts "🌱 Seeding spices..."


puts "Creating Recipes"
# Use the recipe's name as the variable name 
#sloppy joe, pancakes, mac and cheese, 
chicken_parmesan = Recipe.create(name: "Chicken Parmesan")
caesar_salad = Recipe.create(name: "Caesar Salad")
sloppy_joe = Recipe.create(name: "Sloppy Joe")
blt = Recipe.create(name: "BLT")
avocado_toast = Recipe.create(name: "Avocado Toast")
grilled_cheese = Recipe.create(name: "Grilled Cheese")


puts "Creating Markets"
butcher = Market.create(name: "Butcher")
farmersmarket = Market.create(name: "Farmers Market")
baker = Market.create(name: "Baker")

puts "Creating Ingredients"
# use the ingredients name as the variable name

chicken_breast = Ingredient.create(name: "Chicken Breast", quantity: 3, market_id: butcher.id, recipe_id: chicken_parmesan.id)
bread_crumbs = Ingredient.create(name: "Bread Crumbs", quantity: 1, market_id: farmersmarket.id, recipe_id: chicken_parmesan.id)
mozzarella = Ingredient.create(name: "Mozzarella", quantity: 1, market_id: farmersmarket.id, recipe_id: chicken_parmesan.id)
marinara_sauce = Ingredient.create(name: "Marinara Sauce", quantity: 1, market_id: farmersmarket.id, recipe_id: chicken_parmesan.id)

romaine_lettuce = Ingredient.create(name: "Romaine Lettuce", quantity: 4, market_id: farmersmarket.id, recipe_id: caesar_salad.id)
caesar_dressing = Ingredient.create(name: "Caesar Dressing", quantity: 1, market_id: farmersmarket.id, recipe_id: caesar_salad.id)
crutons = Ingredient.create(name: "Crutons", quantity: 1, market_id: farmersmarket.id, recipe_id: caesar_salad.id)
parmesan = Ingredient.create(name: "Parmesan", quantity: 1, market_id: farmersmarket.id, recipe_id: caesar_salad.id)
 
ground_beef = Ingredient.create(name: "Ground Beef", quantity: 1, market_id: butcher.id, recipe_id: sloppy_joe.id)
tomato_sauce = Ingredient.create(name: "Tomato Sauce", quantity: 1, market_id: farmersmarket.id, recipe_id: sloppy_joe.id)
onion = Ingredient.create(name: "Onion", quantity: 2, market_id: farmersmarket.id, recipe_id: sloppy_joe.id)
kaiser_bun = Ingredient.create(name: "Kaiser Bun", quantity: 1, market_id: baker.id, recipe_id: sloppy_joe.id)

bacon = Ingredient.create(name: "Bacon", quantity: 1, market_id: butcher.id, recipe_id: blt.id)
bibb_lettuce = Ingredient.create(name: "Bibb Lettuce", quantity: 2, market_id: farmersmarket.id, recipe_id: blt.id)
tomato = Ingredient.create(name: "Tomato", quantity: 3, market_id: farmersmarket.id, recipe_id: blt.id)
mayonnaise = Ingredient.create(name: "Mayonnaise", quantity: 1, market_id: farmersmarket.id, recipe_id: blt.id)
potato_bread = Ingredient.create(name: "Potato Bread", quantity: 1, market_id: baker.id, recipe_id: blt.id)

# wheat_bread = Ingredient.create(name: "Wheat Bread", quantity: , market_id: baker.id, recipe_id: avocado_toast.id)
avocado = Ingredient.create(name: "Avocado", quantity: 4, market_id: farmersmarket.id, recipe_id: avocado_toast.id)
sourdough_bread = Ingredient.create(name: "Sourdough Bread", quantity: 1, market_id: baker.id, recipe_id: avocado_toast.id)
egg = Ingredient.create(name: "Egg", quantity: 1, market_id: farmersmarket.id, recipe_id: avocado_toast.id)
pepper = Ingredient.create(name: "Pepper", quantity: 1, market_id: farmersmarket.id, recipe_id: avocado_toast.id)
arugala = Ingredient.create(name: "Arugala", quantity: 1, market_id: farmersmarket.id, recipe_id: avocado_toast.id)

sourdough_bread = Ingredient.create(name: "Sourdough Bread", quantity: 1, market_id: baker.id, recipe_id: grilled_cheese.id)
butter = Ingredient.create(name: "Butter", quantity: 2, market_id: farmersmarket.id, recipe_id: grilled_cheese.id)
yellow_cheddar = Ingredient.create(name: "Yellow Cheddar", quantity: 1, market_id: farmersmarket.id, recipe_id: grilled_cheese.id)
white_cheddar = Ingredient.create(name: "White Cheddar", quantity: 1, market_id: farmersmarket.id, recipe_id: grilled_cheese.id)
gruyere = Ingredient.create(name: "Gruyere", quantity: 1, market_id: farmersmarket.id, recipe_id: grilled_cheese.id)

puts "✅ Done seeding!"
