class AddChosenRecipe < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :recipe_chosen, :boolean, default: false
  end
end
