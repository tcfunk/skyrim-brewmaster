class CreateTableEffectsIngredients < ActiveRecord::Migration
  def change
    create_table :effects_ingredients, id: false do |t|
      t.integer :effect_id
      t.integer :ingredient_id
    end
    add_index :effects_ingredients, [:effect_id, :ingredient_id], unique: true
  end
end