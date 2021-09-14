class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :quantity
      t.string :aisle
      t.integer :market_id
      t.integer :recipe_id
    end 
  end
end
