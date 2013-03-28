class RemoveColumnTeriaryEffectIdFromIngredients < ActiveRecord::Migration
  def up
    remove_column :ingredients, :teriary_effect_id
  end

  def down
    add_column :ingredients, :teriary_effect_id, :integer
  end
end
