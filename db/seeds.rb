puts "Deleting old data..."
Recipe.destroy_all
Market.destroy_all
Ingredient.destroy_all

puts "🌱 Seeding spices..."


puts "Creating Recipes"
# Use the recipe's name as the variable name 
chickensandwich = Recipe.create(name: "Chicken Sandwich")
pepperonipizza = Recipe.create(name: "Pepperoni Pizza")
pork = Recipe.create(name: "Pork Chops with Applesauce and Asparagus")
steak = Recipe.create(name: "Steak and Potatoes")
chickensoup = Recipe.create(name: "Chicken Soup")
spaghettisquash = Recipe.create(name: "Pesto and Tomato Spaghetti Squash")

puts "Creating Markets"
butcher = Market.create(name: "Butcher")
farmersmarket = Market.create(name: "Farmers Market")
baker = Market.create(name: "Baker")

puts "Creating Ingredients"
# use the ingredients name as the variable name
briochebuns = Ingredient.create(name: "Brioche Buns", quantity: 4, recipe_id: chickensandwich.id, market_id: baker.id)
chickenbreast = Ingredient.create(name: "Chicken Breast", quantity: 4, recipe_id: chickensandwich.id, market_id: butcher.id)
lettuce = Ingredient.create(name: "Lettuce", quantity: 1, recipe_id: chickensandwich.id, market_id: farmersmarket.id)
tomato = Ingredient.create(name: "Tomato", quantity: 1, recipe_id: chickensandwich.id, market_id: farmersmarket.id)
pizzadough = Ingredient.create(name: "Pizza Dough", quantity: 1, recipe_id: pepperonipizza.id, market_id: baker.id)
tomatosauce = Ingredient.create(name: "Tomato Sauce", quantity: 1, recipe_id: pepperonipizza.id, market_id: farmersmarket.id)
mozzarella = Ingredient.create(name: "Mozzarella Cheese", quantity: 1, recipe_id: pepperonipizza.id, market_id: farmersmarket.id)
pepperoni = Ingredient.create(name: "Pepperoni", quantity: 1, recipe_id: pepperonipizza.id, market_id: butcher.id)
porkchops = Ingredient.create(name: "Pork Chops", quantity: 4, recipe_id: pork.id, market_id: butcher.id)
apples = Ingredient.create(name: "Apples", quantity: 2, recipe_id: pork.id, market_id: farmersmarket.id)
asparagus = Ingredient.create(name: "Asparagus", quantity: 20, recipe_id: pork.id, market_id: farmersmarket.id)
ribeye = Ingredient.create(name: "Ribeye Steak", quantity: 4, recipe_id: steak.id, market_id: butcher.id)
potatoes = Ingredient.create(name: "Potatoes", quantity: 6, recipe_id: steak.id, market_id: farmersmarket.id)
wholechicken = Ingredient.create(name: "Whole Chicken", quantity: 1, recipe_id: chickensoup.id, market_id: butcher.id)
carrots = Ingredient.create(name: "Carrots", quantity: 6, recipe_id: chickensoup.id, market_id: farmersmarket.id)
celery = Ingredient.create(name: "Celery", quantity: 6, recipe_id: chickensoup.id, market_id: farmersmarket.id)
onion = Ingredient.create(name: "Onion", quantity: 1, recipe_id: chickensoup.id, market_id: farmersmarket.id)
squash = Ingredient.create(name: "Spaghetti Squash", quantity: 1, recipe_id: spaghettisquash.id, market_id: farmersmarket.id)
pesto = Ingredient.create(name: "Pesto", quantity: 1, recipe_id: spaghettisquash.id, market_id: farmersmarket.id)
cherrytomato = Ingredient.create(name: "Cherry Tomatoes", quantity: 12, recipe_id: spaghettisquash.id, market_id: farmersmarket.id)

puts "✅ Done seeding!"
