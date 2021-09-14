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


chicken_breast = Ingredient.create(name: "Chicken Breast", quantity: 3, market_id: butcher.id, recipe_id: chicken_parmesan.id)
bread_crumbs = Ingredient.create(name: "Bread Crumbs", quantity: 1, market_id: farmersmarket.id, recipe_id: chicken_parmesan.id)
mozzarella_chicken_parm = Ingredient.create(name: "Mozzarella", quantity: 1, market_id: farmersmarket.id, recipe_id: chicken_parmesan.id)
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

wheat_bread = Ingredient.create(name: "Wheat Bread", quantity: , market_id: baker.id, recipe_id: avocado_toast.id)
avocado = Ingredient.create(name: "Avocado", quantity: 4, market_id: farmersmarket.id, recipe_id: avocado_toast.id)
egg = Ingredient.create(name: "Egg", quantity: 1, market_id: farmersmarket.id, recipe_id: avocado_toast.id)
pepper = Ingredient.create(name: "Pepper", quantity: 1, market_id: farmersmarket.id, recipe_id: avocado_toast.id)
arugula = Ingredient.create(name: "Arugula", quantity: 1, market_id: farmersmarket.id, recipe_id: avocado_toast.id)

sourdough_bread = Ingredient.create(name: "Sourdough Bread", quantity: 1, market_id: baker.id, recipe_id: grilled_cheese.id)
butter = Ingredient.create(name: "Butter", quantity: 2, market_id: farmersmarket.id, recipe_id: grilled_cheese.id)
yellow_cheddar = Ingredient.create(name: "Yellow Cheddar", quantity: 1, market_id: farmersmarket.id, recipe_id: grilled_cheese.id)
white_cheddar = Ingredient.create(name: "White Cheddar", quantity: 1, market_id: farmersmarket.id, recipe_id: grilled_cheese.id)
gruyere = Ingredient.create(name: "Gruyere", quantity: 1, market_id: farmersmarket.id, recipe_id: grilled_cheese.id)

briochebuns = Ingredient.create(name: "Brioche Buns", quantity: 4, recipe_id: chickensandwich.id, market_id: baker.id)
chickenbreast = Ingredient.create(name: "Chicken Breast", quantity: 4, recipe_id: chickensandwich.id, market_id: butcher.id)
lettuce = Ingredient.create(name: "Lettuce", quantity: 1, recipe_id: chickensandwich.id, market_id: farmersmarket.id)
tomato_chicken_sandwich = Ingredient.create(name: "Tomato", quantity: 1, recipe_id: chickensandwich.id, market_id: farmersmarket.id)

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
onion_chicken_soup = Ingredient.create(name: "Onion", quantity: 1, recipe_id: chickensoup.id, market_id: farmersmarket.id)

squash = Ingredient.create(name: "Spaghetti Squash", quantity: 1, recipe_id: spaghettisquash.id, market_id: farmersmarket.id)
pesto = Ingredient.create(name: "Pesto", quantity: 1, recipe_id: spaghettisquash.id, market_id: farmersmarket.id)
cherrytomato = Ingredient.create(name: "Cherry Tomatoes", quantity: 12, recipe_id: spaghettisquash.id, market_id: farmersmarket.id)


puts "✅ Done seeding!"
