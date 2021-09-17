class ApplicationController < Sinatra::Base
  # default response header for all responses to indicate that our server is returning a JSON-formatted string: 
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!!" }.to_json
  end

  get "/recipes" do 
    recipes = Recipe.all
    recipes.to_json#(include: { ingredients: { include: :market} })
  end 

  get "/ingredients" do 
    ingredients = Ingredient.all
    ingredients.to_json(include: :recipe)
  end 

  get "/markets" do 
    markets = Market.all
    markets.to_json
  end 

  patch '/recipes/:id' do
    recipe = Recipe.find(params[:id])
    recipe.update(
      recipe_chosen: params[:recipe_chosen]
    )
    recipe.to_json
  end 

  delete '/recipes/:id' do 
    recipe = Recipe.find(params[:id])
    recipe.destroy
    recipe.to_json
  end 

end
